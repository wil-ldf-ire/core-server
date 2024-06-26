installpath="~/ubuntu-server";
read -p "MySQL Root Username: " mysqluser;
echo "MySQL Root Password:";
read -s mysqlpass;
git clone https://github.com/tribe-framework/ubuntu-server.git $installpath;
sed -i "s/mysql_root_user/$mysqluser/g" $installpath/server.sh;
sed -i "s/mysql_root_pass/$mysqlpass/g" $installpath/server.sh;
bash $installpath/server.sh;
rm $installpath/server.sh;
rm $installpath/install.sh;
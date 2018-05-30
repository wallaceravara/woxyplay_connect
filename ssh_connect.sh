+# #!/bin/bash
+#By GHOSTSSHBR
+
+echo -e "\033[1;31m-----> \033[01;37mBEM VINDO\033[0m"
+echo -e "\033[1;31m-----> \033[01;37mâ€¢ Script Feito por (GHBRNET)\033[0m"
+echo -e "\033[1;31m-----> \033[01;37mâ€¢ InstalaÃ§Ã£o AutomÃ¡tica\033[0m"
+echo -e "\033[1;31m-----> \033[01;37mâ€¢ Necessita VPS em Debian 8 64 Bits\033[0m"
+echo -e "\033[1;31m-----> \033[01;37mâ€¢ Paine VersÃ£o 7.0\033[0m"
+echo " "
+echo -e "\033[1;31m-----> \033[01;37mINSTRUÃ‡Ã•ES\033[0m"
+echo -e "\033[1;31m-----> \033[01;37mâ€¢ Sempre que Solicitado Senha, Coloque\033[0m"
+echo -e "\033[1;31m-----> \033[01;37mâ€¢ Senha: root\033[0m"
+echo -e "\033[1;31m-----> \033[01;37mâ€¢ Sempre que Solicitado [Y/N]\033[0m"
+echo -e "\033[1;31m-----> \033[01;37mâ€¢ Escolha Y (Sim para Todos)\033[0m"
+echo " "
+echo -e "\033[1;31m-----> \033[01;37mSUPORTE\033[0m"
+echo -e "\033[1;31m-----> \033[01;37mâ€¢ Telegram: @ghostsshbr \033[0m"
+echo -e "\033[1;31m-----> \033[01;37mâ€¢ WhatsApp: 14 99704-9324 \033[0m"
+echo " "
+echo -e "\033[1;31m-----> \033[01;37mINSTALAÃ‡ÃƒO \033[0m"
+echo -e "\033[1;31m-----> \033[01;37mâ€¢ Para Instalar o Painel 7.0 \033[0m"
+read -p "RESPONDA: " -e -i 1 resposta
+if [[ "$resposta" = '1' ]]; then
+apt-get update </dev/tty
+apt-get upgrade -y </dev/tty
+apt-get install sudo -y </dev/tty
+apt-get install cron -y </dev/tty
+apt-get install curl -y </dev/tty
+apt-get install apache2 -y </dev/tty
+apt-get install php5 libapache2-mod-php5 php5-mcrypt -y </dev/tty
+service apache2 restart
+apt-get install mysql-server php5-mysql -y </dev/tty
+apt-get install unzip -y </dev/tty
+apt-get install libssh2-1-dev libssh2-php -y </dev/tty
+mysql_install_db </dev/tty
+mysql_secure_installation </dev/tty
+apt-get install phpmyadmin -y </dev/tty
+php5enmod mcrypt
+php -m | grep ssh2
+ln -s /usr/share/phpmyadmin /var/www/html/phpmyadmin
+service apache2 restart
+apt-get install unzip
+cd /var/www/html
+wget http://142.44.219.253/p7/script.zip
+unzip script.zip
+rm script.zip
+rm index.html
+clear
+echo -e "\033[1;31m-----> \033[01;37mPAINEL 7.0 IMPORTADO COM SUCESSO\033[0m"
+sleep 5
+touch /var/log/cbox.log
+chmod 777 -R /var/www/html/files/ehi
+chmod 777 -R /var/www/html/files/ovpn
+chmod 777 -R /var/www/html/files/acm
+chmod 777 -R /var/www/html/files/epro
+chmod 777 -R /var/www/html/files/kpn
+chmod 777 -R /var/www/html/files/ktc
+apt-get install software-properties-common -y </dev/tty
+apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xcbcb082a1bb943db </dev/tty
+add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://mirror.ufscar.br/mariadb/repo/10.1/debian jessie main' </dev/tty
+apt-get update -y </dev/tty
+apt-get install mariadb-server -y </dev/tty
+apt-get install git -y </dev/tty
+mysql -h localhost -u root -proot -e "grant all privileges on *.* to root@'localhost' identified by 'root'; commit;
+flush privileges;"
+mysql -h localhost -u root -proot -e "CREATE DATABASE cbox"
+cd /var/www/html
+wget http://142.44.219.253/p7/bancopainel.sql
+mysql -p -u root cbox < bancopainel.sql
+cd /root
+clear
+echo -e "\033[1;31m-----> \033[01;37mBANCO DE DADOS IMPORTADO COM SUCESSO\033[0m"
+sleep 5
+groupadd cbox </dev/tty
+git clone https://github.com/archl0rd/MyShellScripts.git </dev/tty
+ln -s /root/MyShellScripts/sys-admin/loggedUsers.sh /sbin/loggedUsers
+ln -s /root/MyShellScripts/sys-admin/createdUsers.sh /sbin/createdUsers
+service apache2 restart
+echo "* * * * * /usr/bin/php5 /var/www/html/pages/system/cron.php" >> /var/spool/cron/crontabs/root
+echo "* * * * * /usr/bin/php5 /var/www/html/pages/system/cron.ssh.php" >> /var/spool/cron/crontabs/root
+echo "* * * * * /usr/bin/php5 /var/www/html/pages/system/cron.sms.php" >> /var/spool/cron/crontabs/root
+echo "* * * * * /usr/bin/php5 /var/www/html/pages/system/cron.online.ssh.php" >> /var/spool/cron/crontabs/root
+echo "10 * * * * /usr/bin/php5 /var/www/html/pages/system/cron.servidor.php" >> /var/spool/cron/crontabs/root
+echo "* * * * * /usr/bin/php /var/www/html/pages/system/cron.php" >> /var/spool/cron/crontabs/root
+echo "* * * * * /usr/bin/php /var/www/html/pages/system/cron.ssh.php" >> /var/spool/cron/crontabs/root
+echo "* * * * * /usr/bin/php /var/www/html/pages/system/cron.sms.php" >> /var/spool/cron/crontabs/root
+echo "* * * * * /usr/bin/php /var/www/html/pages/system/cron.online.ssh.php" >> /var/spool/cron/crontabs/root
+echo "10 * * * * /usr/bin/php /var/www/html/pages/system/cron.servidor.php" >> /var/spool/cron/crontabs/root
+clear
+echo -e "\033[1;31m-----> \033[01;37mCONFIGURAÃ‡ÃƒO\033[0m"
+echo -e "\033[1;31m-----> \033[01;37mâ€¢ Agora Vamos Configurar Data e Hora\033[0m"
+echo -e "\033[1;31m-----> \033[01;37mâ€¢ Escolha AMERICA Depois SÃƒO PAULO\033[0m"
+echo -e "\033[1;31m-----> \033[01;37mâ€¢ Aguarde 15 Segundo Para Iniciar o Menu\033[0m"
+sleep 15
+dpkg-reconfigure tzdata </dev/tty
+clear
+echo -e "\033[1;31m-----> \033[01;37mPAINEL INSTALADO COM SUCESSO\033[0m"
+echo -e "\033[1;31m-----> \033[01;37mâ€¢ Para Acessa-lo Digite no Navegador:\033[0m"
+echo -e "\033[1;31m-----> \033[01;37mâ€¢ IP-DA-VPS/admin\033[0m"
+echo -e "\033[1;31m-----> \033[01;37mâ€¢ Usuario: admin\033[0m"
+echo -e "\033[1;31m-----> \033[01;37mâ€¢ Senha: admin\033[0m"
+fi

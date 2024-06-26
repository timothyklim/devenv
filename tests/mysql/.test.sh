set -e

wait_for_port 3306

# Wait for configure-mysql to finish.
sleep 5

# through unix_socket
mysql -e 'SELECT VERSION()'

# through tcp/ip
mysql -h "127.0.0.1" -udb -pdb -e 'SELECT VERSION()'

ping-mysql

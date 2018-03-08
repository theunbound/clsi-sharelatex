#!/bin/sh

echo "Changing permissions of /var/run/docker.sock for sibling containers"
chown root:docker /var/run/docker.sock
./bin/install_texlive_gce.sh
exec runuser -u app "$@"
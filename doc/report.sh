#!/bin/sh

TINYPROXY_BIN=/usr/local/sbin/tinyproxy

(echo "date: "
date
echo "uname: "
uname -a
echo "ps: "
ps -ef | grep '[t]inyproxy'
echo "ver: "
if [ -x $TINYPROXY_BIN ]; then
   $TINYPROXY_BIN -v
else
   echo no ver available.
fi;) 2>&1 | mail -s 'tinyproxy install report' rjkaes@users.sourceforge.net

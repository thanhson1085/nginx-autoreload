#!/bin/bash
while inotifywait -e modify /etc/nginx/conf.d/default.conf; do
    echo Nginx reload ...
    nginx -s reload
done

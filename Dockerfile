FROM nginx:alpine

COPY ./conf.d /etc/nginx/conf.d

# Setup Volume
VOLUME ["/usr/share/nginx/html"]

# add test PHP file
# ADD ./index.php /usr/share/nginx/html/index.php
# RUN chown -Rf www-data.www-data /usr/share/nginx/html/

# Expose Ports
EXPOSE 443
EXPOSE 80

#CMD ["/bin/bash", "/start.sh"]

WORKDIR /var/www

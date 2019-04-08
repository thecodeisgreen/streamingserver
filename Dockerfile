FROM tiangolo/nginx-rtmp

COPY nginx.conf /etc/nginx/nginx.conf
WORKDIR /
RUN mkdir /mnt/hls
RUN chmod 777 /mnt/hls

EXPOSE 1935
EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
FROM alpine:3.7

WORKDIR /tmp
RUN apk update && apk add nginx
COPY index.html /usr/share/nginx/html/
CMD ["nginx","-g","daemon off;"]

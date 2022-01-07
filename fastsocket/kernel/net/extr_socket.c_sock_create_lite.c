
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int type; } ;


 int ENOMEM ;
 int security_socket_create (int,int,int,int) ;
 int security_socket_post_create (struct socket*,int,int,int,int) ;
 struct socket* sock_alloc () ;
 int sock_release (struct socket*) ;

int sock_create_lite(int family, int type, int protocol, struct socket **res)
{
 int err;
 struct socket *sock = ((void*)0);

 err = security_socket_create(family, type, protocol, 1);
 if (err)
  goto out;

 sock = sock_alloc();
 if (!sock) {
  err = -ENOMEM;
  goto out;
 }

 sock->type = type;
 err = security_socket_post_create(sock, family, type, protocol, 1);
 if (err)
  goto out_release;

out:
 *res = sock;
 return err;
out_release:
 sock_release(sock);
 sock = ((void*)0);
 goto out;
}

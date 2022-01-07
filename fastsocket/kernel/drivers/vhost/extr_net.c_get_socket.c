
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;


 int ENOTSOCK ;
 struct socket* ERR_PTR (int ) ;
 int IS_ERR (struct socket*) ;
 struct socket* get_raw_socket (int) ;
 struct socket* get_tap_socket (int) ;

__attribute__((used)) static struct socket *get_socket(int fd)
{
 struct socket *sock;

 if (fd == -1)
  return ((void*)0);
 sock = get_raw_socket(fd);
 if (!IS_ERR(sock))
  return sock;
 sock = get_tap_socket(fd);
 if (!IS_ERR(sock))
  return sock;
 return ERR_PTR(-ENOTSOCK);
}

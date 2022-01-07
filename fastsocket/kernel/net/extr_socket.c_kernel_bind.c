
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {TYPE_1__* ops; } ;
struct sockaddr {int dummy; } ;
struct TYPE_2__ {int (* bind ) (struct socket*,struct sockaddr*,int) ;} ;


 int stub1 (struct socket*,struct sockaddr*,int) ;

int kernel_bind(struct socket *sock, struct sockaddr *addr, int addrlen)
{
 return sock->ops->bind(sock, addr, addrlen);
}

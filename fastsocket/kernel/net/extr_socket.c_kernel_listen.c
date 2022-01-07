
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* listen ) (struct socket*,int) ;} ;


 int stub1 (struct socket*,int) ;

int kernel_listen(struct socket *sock, int backlog)
{
 return sock->ops->listen(sock, backlog);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;


 int __sock_create (int *,int,int,int,struct socket**,int) ;
 int init_net ;

int sock_create_kern(int family, int type, int protocol, struct socket **res)
{
 return __sock_create(&init_net, family, type, protocol, res, 1);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;


 int EOPNOTSUPP ;

int sock_no_getname(struct socket *sock, struct sockaddr *saddr,
      int *len, int peer)
{
 return -EOPNOTSUPP;
}

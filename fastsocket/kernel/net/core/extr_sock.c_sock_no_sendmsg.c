
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct msghdr {int dummy; } ;
struct kiocb {int dummy; } ;


 int EOPNOTSUPP ;

int sock_no_sendmsg(struct kiocb *iocb, struct socket *sock, struct msghdr *m,
      size_t len)
{
 return -EOPNOTSUPP;
}

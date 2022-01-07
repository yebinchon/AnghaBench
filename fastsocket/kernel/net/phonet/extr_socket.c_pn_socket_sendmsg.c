
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {TYPE_1__* sk_prot; } ;
struct msghdr {int dummy; } ;
struct kiocb {int dummy; } ;
struct TYPE_2__ {int (* sendmsg ) (struct kiocb*,struct sock*,struct msghdr*,size_t) ;} ;


 int EAGAIN ;
 scalar_t__ pn_socket_autobind (struct socket*) ;
 int stub1 (struct kiocb*,struct sock*,struct msghdr*,size_t) ;

__attribute__((used)) static int pn_socket_sendmsg(struct kiocb *iocb, struct socket *sock,
    struct msghdr *m, size_t total_len)
{
 struct sock *sk = sock->sk;

 if (pn_socket_autobind(sock))
  return -EAGAIN;

 return sk->sk_prot->sendmsg(iocb, sk, m, total_len);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {TYPE_1__* sk_prot; } ;
struct msghdr {int dummy; } ;
struct kiocb {int dummy; } ;
struct TYPE_4__ {int num; } ;
struct TYPE_3__ {int (* sendmsg ) (struct kiocb*,struct sock*,struct msghdr*,size_t) ;} ;


 int EAGAIN ;
 scalar_t__ inet_autobind (struct sock*) ;
 TYPE_2__* inet_sk (struct sock*) ;
 int inet_sock_cpu_or_flow_record (struct sock*) ;
 int stub1 (struct kiocb*,struct sock*,struct msghdr*,size_t) ;

int inet_sendmsg(struct kiocb *iocb, struct socket *sock, struct msghdr *msg,
   size_t size)
{
 struct sock *sk = sock->sk;

 inet_sock_cpu_or_flow_record(sk);


 if (!inet_sk(sk)->num && inet_autobind(sk))
  return -EAGAIN;

 return sk->sk_prot->sendmsg(iocb, sk, msg, size);
}

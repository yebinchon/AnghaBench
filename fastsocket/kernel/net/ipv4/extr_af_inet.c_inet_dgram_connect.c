
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct sock {TYPE_1__* sk_prot; } ;
struct TYPE_4__ {int num; } ;
struct TYPE_3__ {int (* disconnect ) (struct sock*,int) ;int (* connect ) (struct sock*,struct sockaddr*,int) ;} ;


 scalar_t__ AF_UNSPEC ;
 int EAGAIN ;
 scalar_t__ inet_autobind (struct sock*) ;
 TYPE_2__* inet_sk (struct sock*) ;
 int stub1 (struct sock*,int) ;
 int stub2 (struct sock*,struct sockaddr*,int) ;

int inet_dgram_connect(struct socket *sock, struct sockaddr * uaddr,
         int addr_len, int flags)
{
 struct sock *sk = sock->sk;

 if (uaddr->sa_family == AF_UNSPEC)
  return sk->sk_prot->disconnect(sk, flags);

 if (!inet_sk(sk)->num && inet_autobind(sk))
  return -EAGAIN;
 return sk->sk_prot->connect(sk, (struct sockaddr *)uaddr, addr_len);
}

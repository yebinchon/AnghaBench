
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int state; struct sock* sk; } ;
struct sock {TYPE_1__* sk_prot; } ;
struct TYPE_2__ {struct sock* (* accept ) (struct sock*,int,int*) ;} ;


 int SS_CONNECTED ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int sock_graft (struct sock*,struct socket*) ;
 struct sock* stub1 (struct sock*,int,int*) ;

__attribute__((used)) static int pn_socket_accept(struct socket *sock, struct socket *newsock,
    int flags)
{
 struct sock *sk = sock->sk;
 struct sock *newsk;
 int err;

 newsk = sk->sk_prot->accept(sk, flags, &err);
 if (!newsk)
  return err;

 lock_sock(newsk);
 sock_graft(newsk, newsock);
 newsock->state = SS_CONNECTED;
 release_sock(newsk);
 return 0;
}

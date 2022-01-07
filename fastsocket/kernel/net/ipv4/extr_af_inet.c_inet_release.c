
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {long sk_lingertime; TYPE_1__* sk_prot; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int (* close ) (struct sock*,long) ;} ;


 int PF_EXITING ;
 int SOCK_LINGER ;
 TYPE_2__* current ;
 int inet_rps_reset_flow (struct sock*) ;
 int ip_mc_drop_socket (struct sock*) ;
 scalar_t__ sock_flag (struct sock*,int ) ;
 int stub1 (struct sock*,long) ;

int inet_release(struct socket *sock)
{
 struct sock *sk = sock->sk;

 if (sk) {
  long timeout;

  inet_rps_reset_flow(sk);


  ip_mc_drop_socket(sk);
  timeout = 0;
  if (sock_flag(sk, SOCK_LINGER) &&
      !(current->flags & PF_EXITING))
   timeout = sk->sk_lingertime;
  sock->sk = ((void*)0);
  sk->sk_prot->close(sk, timeout);
 }
 return 0;
}

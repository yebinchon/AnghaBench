
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int (* sk_state_change ) (struct sock*) ;int sk_shutdown; } ;


 int DCCP_CLOSED ;
 int SHUTDOWN_MASK ;
 int SOCK_DEAD ;
 int dccp_clear_xmit_timers (struct sock*) ;
 int dccp_set_state (struct sock*,int ) ;
 int inet_csk_destroy_sock (struct sock*) ;
 int sock_flag (struct sock*,int ) ;
 int stub1 (struct sock*) ;

void dccp_done(struct sock *sk)
{
 dccp_set_state(sk, DCCP_CLOSED);
 dccp_clear_xmit_timers(sk);

 sk->sk_shutdown = SHUTDOWN_MASK;

 if (!sock_flag(sk, SOCK_DEAD))
  sk->sk_state_change(sk);
 else
  inet_csk_destroy_sock(sk);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int inet_csk_init_xmit_timers (struct sock*,int *,int *,int *) ;
 int tcp_delack_timer ;
 int tcp_keepalive_timer ;
 int tcp_write_timer ;

void tcp_init_xmit_timers(struct sock *sk)
{
 inet_csk_init_xmit_timers(sk, &tcp_write_timer, &tcp_delack_timer,
      &tcp_keepalive_timer);
}

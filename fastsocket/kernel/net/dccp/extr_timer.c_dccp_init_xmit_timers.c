
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int dccp_delack_timer ;
 int dccp_init_write_xmit_timer (struct sock*) ;
 int dccp_keepalive_timer ;
 int dccp_write_timer ;
 int inet_csk_init_xmit_timers (struct sock*,int *,int *,int *) ;

void dccp_init_xmit_timers(struct sock *sk)
{
 dccp_init_write_xmit_timer(sk);
 inet_csk_init_xmit_timers(sk, &dccp_write_timer, &dccp_delack_timer,
      &dccp_keepalive_timer);
}

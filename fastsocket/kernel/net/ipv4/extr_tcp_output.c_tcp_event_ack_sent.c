
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int ICSK_TIME_DACK ;
 int inet_csk_clear_xmit_timer (struct sock*,int ) ;
 int tcp_dec_quickack_mode (struct sock*,unsigned int) ;

__attribute__((used)) static inline void tcp_event_ack_sent(struct sock *sk, unsigned int pkts)
{
 tcp_dec_quickack_mode(sk, pkts);
 inet_csk_clear_xmit_timer(sk, ICSK_TIME_DACK);
}

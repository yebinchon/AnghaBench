
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_timer; } ;
struct TYPE_2__ {scalar_t__ blocked; scalar_t__ pending; } ;
struct inet_connection_sock {int icsk_delack_timer; int icsk_retransmit_timer; TYPE_1__ icsk_ack; scalar_t__ icsk_pending; } ;


 struct inet_connection_sock* inet_csk (struct sock*) ;
 int sk_stop_timer (struct sock*,int *) ;

void inet_csk_clear_xmit_timers(struct sock *sk)
{
 struct inet_connection_sock *icsk = inet_csk(sk);

 icsk->icsk_pending = icsk->icsk_ack.pending = icsk->icsk_ack.blocked = 0;

 sk_stop_timer(sk, &icsk->icsk_retransmit_timer);
 sk_stop_timer(sk, &icsk->icsk_delack_timer);
 sk_stop_timer(sk, &sk->sk_timer);
}

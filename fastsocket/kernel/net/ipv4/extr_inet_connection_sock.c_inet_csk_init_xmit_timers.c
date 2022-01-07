
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_timer; } ;
struct TYPE_2__ {scalar_t__ pending; } ;
struct inet_connection_sock {TYPE_1__ icsk_ack; scalar_t__ icsk_pending; int icsk_delack_timer; int icsk_retransmit_timer; } ;


 struct inet_connection_sock* inet_csk (struct sock*) ;
 int setup_timer (int *,void (*) (unsigned long),unsigned long) ;

void inet_csk_init_xmit_timers(struct sock *sk,
          void (*retransmit_handler)(unsigned long),
          void (*delack_handler)(unsigned long),
          void (*keepalive_handler)(unsigned long))
{
 struct inet_connection_sock *icsk = inet_csk(sk);

 setup_timer(&icsk->icsk_retransmit_timer, retransmit_handler,
   (unsigned long)sk);
 setup_timer(&icsk->icsk_delack_timer, delack_handler,
   (unsigned long)sk);
 setup_timer(&sk->sk_timer, keepalive_handler, (unsigned long)sk);
 icsk->icsk_pending = icsk->icsk_ack.pending = 0;
}

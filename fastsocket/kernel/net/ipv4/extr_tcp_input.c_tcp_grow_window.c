
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcp_sock {scalar_t__ rcv_ssthresh; scalar_t__ window_clamp; int advmss; } ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ len; int truesize; } ;
struct TYPE_3__ {int quick; } ;
struct TYPE_4__ {TYPE_1__ icsk_ack; } ;


 int __tcp_grow_window (struct sock*,struct sk_buff*) ;
 TYPE_2__* inet_csk (struct sock*) ;
 scalar_t__ min (int ,scalar_t__) ;
 int tcp_memory_pressure ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_space (struct sock*) ;
 scalar_t__ tcp_win_from_space (int ) ;

__attribute__((used)) static void tcp_grow_window(struct sock *sk, struct sk_buff *skb)
{
 struct tcp_sock *tp = tcp_sk(sk);


 if (tp->rcv_ssthresh < tp->window_clamp &&
     (int)tp->rcv_ssthresh < tcp_space(sk) &&
     !tcp_memory_pressure) {
  int incr;




  if (tcp_win_from_space(skb->truesize) <= skb->len)
   incr = 2 * tp->advmss;
  else
   incr = __tcp_grow_window(sk, skb);

  if (incr) {
   tp->rcv_ssthresh = min(tp->rcv_ssthresh + incr,
            tp->window_clamp);
   inet_csk(sk)->icsk_ack.quick |= 1;
  }
 }
}

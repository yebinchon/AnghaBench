
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcp_sock {scalar_t__ rcv_nxt; scalar_t__ rcv_wup; scalar_t__ rcv_wnd; int out_of_order_queue; } ;
struct sock {int dummy; } ;
struct TYPE_3__ {scalar_t__ rcv_mss; } ;
struct TYPE_4__ {TYPE_1__ icsk_ack; } ;


 scalar_t__ __tcp_select_window (struct sock*) ;
 TYPE_2__* inet_csk (struct sock*) ;
 scalar_t__ skb_peek (int *) ;
 scalar_t__ tcp_in_quickack_mode (struct sock*) ;
 int tcp_send_ack (struct sock*) ;
 int tcp_send_delayed_ack (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static void __tcp_ack_snd_check(struct sock *sk, int ofo_possible)
{
 struct tcp_sock *tp = tcp_sk(sk);


 if (((tp->rcv_nxt - tp->rcv_wup) > inet_csk(sk)->icsk_ack.rcv_mss



      && __tcp_select_window(sk) >= tp->rcv_wnd) ||

     tcp_in_quickack_mode(sk) ||

     (ofo_possible && skb_peek(&tp->out_of_order_queue))) {

  tcp_send_ack(sk);
 } else {

  tcp_send_delayed_ack(sk);
 }
}

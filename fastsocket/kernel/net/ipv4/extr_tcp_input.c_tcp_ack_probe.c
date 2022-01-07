
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_sock {int dummy; } ;
struct sock {int dummy; } ;
struct inet_connection_sock {int icsk_backoff; int icsk_rto; } ;
struct TYPE_2__ {int end_seq; } ;


 int ICSK_TIME_PROBE0 ;
 int TCP_RTO_MAX ;
 TYPE_1__* TCP_SKB_CB (int ) ;
 int after (int ,int ) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 int inet_csk_clear_xmit_timer (struct sock*,int ) ;
 int inet_csk_reset_xmit_timer (struct sock*,int ,int ,int ) ;
 int min (int,int ) ;
 int tcp_send_head (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_wnd_end (struct tcp_sock const*) ;

__attribute__((used)) static void tcp_ack_probe(struct sock *sk)
{
 const struct tcp_sock *tp = tcp_sk(sk);
 struct inet_connection_sock *icsk = inet_csk(sk);



 if (!after(TCP_SKB_CB(tcp_send_head(sk))->end_seq, tcp_wnd_end(tp))) {
  icsk->icsk_backoff = 0;
  inet_csk_clear_xmit_timer(sk, ICSK_TIME_PROBE0);



 } else {
  inet_csk_reset_xmit_timer(sk, ICSK_TIME_PROBE0,
       min(icsk->icsk_rto << icsk->icsk_backoff, TCP_RTO_MAX),
       TCP_RTO_MAX);
 }
}

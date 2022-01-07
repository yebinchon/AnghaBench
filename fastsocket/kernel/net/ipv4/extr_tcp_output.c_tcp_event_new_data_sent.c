
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcp_sock {unsigned int packets_out; int frto_counter; int snd_nxt; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int end_seq; } ;
struct TYPE_3__ {int icsk_rto; } ;


 int ICSK_TIME_RETRANS ;
 int TCP_RTO_MAX ;
 TYPE_2__* TCP_SKB_CB (struct sk_buff*) ;
 TYPE_1__* inet_csk (struct sock*) ;
 int inet_csk_reset_xmit_timer (struct sock*,int ,int ,int ) ;
 int tcp_advance_send_head (struct sock*,struct sk_buff*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 scalar_t__ tcp_skb_pcount (struct sk_buff*) ;

__attribute__((used)) static void tcp_event_new_data_sent(struct sock *sk, struct sk_buff *skb)
{
 struct tcp_sock *tp = tcp_sk(sk);
 unsigned int prior_packets = tp->packets_out;

 tcp_advance_send_head(sk, skb);
 tp->snd_nxt = TCP_SKB_CB(skb)->end_seq;


 if (tp->frto_counter == 2)
  tp->frto_counter = 3;

 tp->packets_out += tcp_skb_pcount(skb);
 if (!prior_packets)
  inet_csk_reset_xmit_timer(sk, ICSK_TIME_RETRANS,
       inet_csk(sk)->icsk_rto, TCP_RTO_MAX);
}

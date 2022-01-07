
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcphdr {scalar_t__ syn; scalar_t__ rst; } ;
struct TYPE_3__ {scalar_t__ saw_tstamp; } ;
struct tcp_sock {scalar_t__ rcv_nxt; TYPE_1__ rx_opt; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {scalar_t__ seq; int end_seq; } ;


 int LINUX_MIB_PAWSESTABREJECTED ;
 int LINUX_MIB_TCPSYNCHALLENGE ;
 int NET_INC_STATS_BH (int ,int ) ;
 int TCP_INC_STATS_BH (int ,int ) ;
 int TCP_MIB_INERRS ;
 TYPE_2__* TCP_SKB_CB (struct sk_buff*) ;
 int __kfree_skb (struct sk_buff*) ;
 int sock_net (struct sock*) ;
 scalar_t__ tcp_fast_parse_options (struct sk_buff*,struct tcphdr*,struct tcp_sock*) ;
 scalar_t__ tcp_paws_discard (struct sock*,struct sk_buff*) ;
 int tcp_reset (struct sock*) ;
 int tcp_send_challenge_ack (struct sock*) ;
 int tcp_send_dupack (struct sock*,struct sk_buff*) ;
 int tcp_sequence (struct tcp_sock*,scalar_t__,int ) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static bool tcp_validate_incoming(struct sock *sk, struct sk_buff *skb,
         struct tcphdr *th, int syn_inerr)
{
 struct tcp_sock *tp = tcp_sk(sk);


 if (tcp_fast_parse_options(skb, th, tp) && tp->rx_opt.saw_tstamp &&
     tcp_paws_discard(sk, skb)) {
  if (!th->rst) {
   NET_INC_STATS_BH(sock_net(sk), LINUX_MIB_PAWSESTABREJECTED);
   tcp_send_dupack(sk, skb);
   goto discard;
  }

 }


 if (!tcp_sequence(tp, TCP_SKB_CB(skb)->seq, TCP_SKB_CB(skb)->end_seq)) {






  if (!th->rst) {
   if (th->syn)
    goto syn_challenge;
   tcp_send_dupack(sk, skb);
  }
  goto discard;
 }


 if (th->rst) {






  if (TCP_SKB_CB(skb)->seq == tp->rcv_nxt)
   tcp_reset(sk);
  else
   tcp_send_challenge_ack(sk);
  goto discard;
 }






 if (th->syn) {
syn_challenge:
  if (syn_inerr)
   TCP_INC_STATS_BH(sock_net(sk), TCP_MIB_INERRS);
  NET_INC_STATS_BH(sock_net(sk), LINUX_MIB_TCPSYNCHALLENGE);
  tcp_send_challenge_ack(sk);
  goto discard;
 }

 return 1;

discard:
 __kfree_skb(skb);
 return 0;
}

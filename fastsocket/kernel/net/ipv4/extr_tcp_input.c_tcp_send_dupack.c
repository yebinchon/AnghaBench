
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct tcp_sock {scalar_t__ rcv_nxt; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ end_seq; scalar_t__ seq; } ;


 int LINUX_MIB_DELAYEDACKLOST ;
 int NET_INC_STATS_BH (int ,int ) ;
 TYPE_1__* TCP_SKB_CB (struct sk_buff*) ;
 scalar_t__ after (scalar_t__,scalar_t__) ;
 scalar_t__ before (scalar_t__,scalar_t__) ;
 int sock_net (struct sock*) ;
 scalar_t__ sysctl_tcp_dsack ;
 int tcp_dsack_set (struct sock*,scalar_t__,scalar_t__) ;
 int tcp_enter_quickack_mode (struct sock*) ;
 scalar_t__ tcp_is_sack (struct tcp_sock*) ;
 int tcp_send_ack (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static void tcp_send_dupack(struct sock *sk, struct sk_buff *skb)
{
 struct tcp_sock *tp = tcp_sk(sk);

 if (TCP_SKB_CB(skb)->end_seq != TCP_SKB_CB(skb)->seq &&
     before(TCP_SKB_CB(skb)->seq, tp->rcv_nxt)) {
  NET_INC_STATS_BH(sock_net(sk), LINUX_MIB_DELAYEDACKLOST);
  tcp_enter_quickack_mode(sk);

  if (tcp_is_sack(tp) && sysctl_tcp_dsack) {
   u32 end_seq = TCP_SKB_CB(skb)->end_seq;

   if (after(TCP_SKB_CB(skb)->end_seq, tp->rcv_nxt))
    end_seq = tp->rcv_nxt;
   tcp_dsack_set(sk, TCP_SKB_CB(skb)->seq, end_seq);
  }
 }

 tcp_send_ack(sk);
}

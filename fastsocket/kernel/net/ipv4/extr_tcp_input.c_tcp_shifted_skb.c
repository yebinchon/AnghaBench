
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcp_sock {unsigned int lost_cnt_hint; struct sk_buff* lost_skb_hint; struct sk_buff* scoreboard_skb_hint; struct sk_buff* retransmit_skb_hint; } ;
struct tcp_sacktag_state {int dummy; } ;
struct sock {int sk_gso_type; } ;
struct sk_buff {scalar_t__ len; } ;
struct TYPE_4__ {int end_seq; int seq; int sacked; int flags; } ;
struct TYPE_3__ {unsigned int gso_segs; int gso_size; int gso_type; } ;


 int BUG_ON (int) ;
 int LINUX_MIB_SACKMERGED ;
 int LINUX_MIB_SACKSHIFTED ;
 int NET_INC_STATS_BH (int ,int ) ;
 int TCPCB_EVER_RETRANS ;
 TYPE_2__* TCP_SKB_CB (struct sk_buff*) ;
 int sk_wmem_free_skb (struct sock*,struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 int sock_net (struct sock*) ;
 int tcp_advance_highest_sack (struct sock*,struct sk_buff*) ;
 struct sk_buff* tcp_highest_sack (struct sock*) ;
 int tcp_sacktag_one (struct sk_buff*,struct sock*,struct tcp_sacktag_state*,int,unsigned int) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 scalar_t__ tcp_skb_pcount (struct sk_buff*) ;
 int tcp_unlink_write_queue (struct sk_buff*,struct sock*) ;
 struct sk_buff* tcp_write_queue_prev (struct sock*,struct sk_buff*) ;

__attribute__((used)) static int tcp_shifted_skb(struct sock *sk, struct sk_buff *skb,
      struct tcp_sacktag_state *state,
      unsigned int pcount, int shifted, int mss,
      int dup_sack)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct sk_buff *prev = tcp_write_queue_prev(sk, skb);

 BUG_ON(!pcount);

 if (skb == tp->lost_skb_hint)
  tp->lost_cnt_hint += pcount;

 TCP_SKB_CB(prev)->end_seq += shifted;
 TCP_SKB_CB(skb)->seq += shifted;

 skb_shinfo(prev)->gso_segs += pcount;
 BUG_ON(skb_shinfo(skb)->gso_segs < pcount);
 skb_shinfo(skb)->gso_segs -= pcount;






 if (!skb_shinfo(prev)->gso_size) {
  skb_shinfo(prev)->gso_size = mss;
  skb_shinfo(prev)->gso_type = sk->sk_gso_type;
 }


 if (skb_shinfo(skb)->gso_segs <= 1) {
  skb_shinfo(skb)->gso_size = 0;
  skb_shinfo(skb)->gso_type = 0;
 }


 tcp_sacktag_one(skb, sk, state, dup_sack, pcount);


 TCP_SKB_CB(prev)->sacked |= (TCP_SKB_CB(skb)->sacked & TCPCB_EVER_RETRANS);

 if (skb->len > 0) {
  BUG_ON(!tcp_skb_pcount(skb));
  NET_INC_STATS_BH(sock_net(sk), LINUX_MIB_SACKSHIFTED);
  return 0;
 }



 if (skb == tp->retransmit_skb_hint)
  tp->retransmit_skb_hint = prev;
 if (skb == tp->scoreboard_skb_hint)
  tp->scoreboard_skb_hint = prev;
 if (skb == tp->lost_skb_hint) {
  tp->lost_skb_hint = prev;
  tp->lost_cnt_hint -= tcp_skb_pcount(prev);
 }

 TCP_SKB_CB(skb)->flags |= TCP_SKB_CB(prev)->flags;
 if (skb == tcp_highest_sack(sk))
  tcp_advance_highest_sack(sk, skb);

 tcp_unlink_write_queue(skb, sk);
 sk_wmem_free_skb(sk, skb);

 NET_INC_STATS_BH(sock_net(sk), LINUX_MIB_SACKMERGED);

 return 1;
}

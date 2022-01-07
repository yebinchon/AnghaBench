
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tcp_sock {int snd_una; } ;
struct tcp_sacktag_state {int fack_count; } ;
struct sock {int dummy; } ;
struct sk_buff {int len; } ;
struct TYPE_2__ {int sacked; int end_seq; int seq; } ;


 int BUG_ON (int) ;
 int LINUX_MIB_SACKSHIFTFALLBACK ;
 int NET_INC_STATS_BH (int ,int ) ;
 int TCPCB_LOST ;
 int TCPCB_SACKED_ACKED ;
 int TCPCB_SACKED_RETRANS ;
 int TCPCB_TAGBITS ;
 TYPE_1__* TCP_SKB_CB (struct sk_buff*) ;
 int after (int,int) ;
 int before (int,int) ;
 int sk_can_gso (struct sock*) ;
 int skb_can_shift (struct sk_buff*) ;
 scalar_t__ skb_shift (struct sk_buff*,struct sk_buff*,int) ;
 int sock_net (struct sock*) ;
 struct sk_buff* tcp_send_head (struct sock*) ;
 int tcp_shifted_skb (struct sock*,struct sk_buff*,struct tcp_sacktag_state*,int,int,int,int) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_skb_mss (struct sk_buff*) ;
 int tcp_skb_pcount (struct sk_buff*) ;
 int tcp_skb_seglen (struct sk_buff*) ;
 struct sk_buff* tcp_write_queue_head (struct sock*) ;
 struct sk_buff* tcp_write_queue_next (struct sock*,struct sk_buff*) ;
 struct sk_buff* tcp_write_queue_prev (struct sock*,struct sk_buff*) ;
 struct sk_buff* tcp_write_queue_tail (struct sock*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *tcp_shift_skb_data(struct sock *sk, struct sk_buff *skb,
       struct tcp_sacktag_state *state,
       u32 start_seq, u32 end_seq,
       int dup_sack)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct sk_buff *prev;
 int mss;
 int pcount = 0;
 int len;
 int in_sack;

 if (!sk_can_gso(sk))
  goto fallback;


 if (!dup_sack &&
     (TCP_SKB_CB(skb)->sacked & (TCPCB_LOST|TCPCB_SACKED_RETRANS)) == TCPCB_SACKED_RETRANS)
  goto fallback;
 if (!skb_can_shift(skb))
  goto fallback;

 if (!after(TCP_SKB_CB(skb)->end_seq, tp->snd_una))
  goto fallback;


 if (unlikely(skb == tcp_write_queue_head(sk)))
  goto fallback;
 prev = tcp_write_queue_prev(sk, skb);

 if ((TCP_SKB_CB(prev)->sacked & TCPCB_TAGBITS) != TCPCB_SACKED_ACKED)
  goto fallback;

 in_sack = !after(start_seq, TCP_SKB_CB(skb)->seq) &&
    !before(end_seq, TCP_SKB_CB(skb)->end_seq);

 if (in_sack) {
  len = skb->len;
  pcount = tcp_skb_pcount(skb);
  mss = tcp_skb_seglen(skb);




  if (mss != tcp_skb_seglen(prev))
   goto fallback;
 } else {
  if (!after(TCP_SKB_CB(skb)->end_seq, start_seq))
   goto noop;




  if (tcp_skb_pcount(skb) <= 1)
   goto noop;

  in_sack = !after(start_seq, TCP_SKB_CB(skb)->seq);
  if (!in_sack) {
   goto fallback;
  }

  len = end_seq - TCP_SKB_CB(skb)->seq;
  BUG_ON(len < 0);
  BUG_ON(len > skb->len);





  mss = tcp_skb_mss(skb);




  if (mss != tcp_skb_seglen(prev))
   goto fallback;

  if (len == mss) {
   pcount = 1;
  } else if (len < mss) {
   goto noop;
  } else {
   pcount = len / mss;
   len = pcount * mss;
  }
 }

 if (!skb_shift(prev, skb, len))
  goto fallback;
 if (!tcp_shifted_skb(sk, skb, state, pcount, len, mss, dup_sack))
  goto out;




 if (prev == tcp_write_queue_tail(sk))
  goto out;
 skb = tcp_write_queue_next(sk, prev);

 if (!skb_can_shift(skb) ||
     (skb == tcp_send_head(sk)) ||
     ((TCP_SKB_CB(skb)->sacked & TCPCB_TAGBITS) != TCPCB_SACKED_ACKED) ||
     (mss != tcp_skb_seglen(skb)))
  goto out;

 len = skb->len;
 if (skb_shift(prev, skb, len)) {
  pcount += tcp_skb_pcount(skb);
  tcp_shifted_skb(sk, skb, state, tcp_skb_pcount(skb), len, mss, 0);
 }

out:
 state->fack_count += pcount;
 return prev;

noop:
 return skb;

fallback:
 NET_INC_STATS_BH(sock_net(sk), LINUX_MIB_SACKSHIFTFALLBACK);
 return ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_write_queue; } ;
struct sk_buff {int dummy; } ;


 int IP6_INC_STATS (int ,int ,int ) ;
 int IPSTATS_MIB_OUTDISCARDS ;
 struct sk_buff* __skb_dequeue_tail (int *) ;
 int inet6_sk (struct sock*) ;
 int inet_sk (struct sock*) ;
 int ip6_cork_release (int ,int ) ;
 int ip6_dst_idev (scalar_t__) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ skb_dst (struct sk_buff*) ;
 int sock_net (struct sock*) ;

void ip6_flush_pending_frames(struct sock *sk)
{
 struct sk_buff *skb;

 while ((skb = __skb_dequeue_tail(&sk->sk_write_queue)) != ((void*)0)) {
  if (skb_dst(skb))
   IP6_INC_STATS(sock_net(sk), ip6_dst_idev(skb_dst(skb)),
          IPSTATS_MIB_OUTDISCARDS);
  kfree_skb(skb);
 }

 ip6_cork_release(inet_sk(sk), inet6_sk(sk));
}

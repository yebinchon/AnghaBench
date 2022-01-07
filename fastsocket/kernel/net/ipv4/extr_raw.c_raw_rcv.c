
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_drops; } ;
struct sk_buff {scalar_t__ data; } ;


 int NET_RX_DROP ;
 int XFRM_POLICY_IN ;
 int atomic_inc (int *) ;
 int kfree_skb (struct sk_buff*) ;
 int nf_reset (struct sk_buff*) ;
 int raw_rcv_skb (struct sock*,struct sk_buff*) ;
 scalar_t__ skb_network_header (struct sk_buff*) ;
 int skb_push (struct sk_buff*,scalar_t__) ;
 int xfrm4_policy_check (struct sock*,int ,struct sk_buff*) ;

int raw_rcv(struct sock *sk, struct sk_buff *skb)
{
 if (!xfrm4_policy_check(sk, XFRM_POLICY_IN, skb)) {
  atomic_inc(&sk->sk_drops);
  kfree_skb(skb);
  return NET_RX_DROP;
 }
 nf_reset(skb);

 skb_push(skb, skb->data - skb_network_header(skb));

 raw_rcv_skb(sk, skb);
 return 0;
}

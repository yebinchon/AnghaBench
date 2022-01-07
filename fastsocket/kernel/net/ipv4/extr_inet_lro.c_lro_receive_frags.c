
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skb_frag_struct {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net_lro_mgr {int features; } ;
typedef int __wsum ;


 int LRO_F_NAPI ;
 struct sk_buff* __lro_proc_segment (struct net_lro_mgr*,struct skb_frag_struct*,int,int,int *,int ,void*,int ) ;
 int netif_receive_skb (struct sk_buff*) ;
 int netif_rx (struct sk_buff*) ;

void lro_receive_frags(struct net_lro_mgr *lro_mgr,
         struct skb_frag_struct *frags,
         int len, int true_size, void *priv, __wsum sum)
{
 struct sk_buff *skb;

 skb = __lro_proc_segment(lro_mgr, frags, len, true_size, ((void*)0), 0,
     priv, sum);
 if (!skb)
  return;

 if (lro_mgr->features & LRO_F_NAPI)
  netif_receive_skb(skb);
 else
  netif_rx(skb);
}

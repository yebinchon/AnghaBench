
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_lro_mgr {int features; } ;


 int LRO_F_NAPI ;
 scalar_t__ __lro_proc_skb (struct net_lro_mgr*,struct sk_buff*,int *,int ,void*) ;
 int netif_receive_skb (struct sk_buff*) ;
 int netif_rx (struct sk_buff*) ;

void lro_receive_skb(struct net_lro_mgr *lro_mgr,
       struct sk_buff *skb,
       void *priv)
{
 if (__lro_proc_skb(lro_mgr, skb, ((void*)0), 0, priv)) {
  if (lro_mgr->features & LRO_F_NAPI)
   netif_receive_skb(skb);
  else
   netif_rx(skb);
 }
}

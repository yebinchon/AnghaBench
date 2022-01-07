
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ iif; int dev; } ;
struct napi_struct {struct sk_buff* skb; int dev; } ;


 scalar_t__ NET_IP_ALIGN ;
 int __skb_pull (struct sk_buff*,int ) ;
 int skb_headlen (struct sk_buff*) ;
 scalar_t__ skb_headroom (struct sk_buff*) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;

void napi_reuse_skb(struct napi_struct *napi, struct sk_buff *skb)
{
 __skb_pull(skb, skb_headlen(skb));
 skb_reserve(skb, NET_IP_ALIGN - skb_headroom(skb));
 skb->dev = napi->dev;
 skb->iif = 0;

 napi->skb = skb;
}

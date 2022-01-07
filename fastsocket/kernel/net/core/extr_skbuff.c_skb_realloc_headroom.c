
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int GFP_ATOMIC ;
 int SKB_DATA_ALIGN (int) ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* pskb_copy (struct sk_buff*,int ) ;
 scalar_t__ pskb_expand_head (struct sk_buff*,int ,int ,int ) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 unsigned int skb_headroom (struct sk_buff*) ;

struct sk_buff *skb_realloc_headroom(struct sk_buff *skb, unsigned int headroom)
{
 struct sk_buff *skb2;
 int delta = headroom - skb_headroom(skb);

 if (delta <= 0)
  skb2 = pskb_copy(skb, GFP_ATOMIC);
 else {
  skb2 = skb_clone(skb, GFP_ATOMIC);
  if (skb2 && pskb_expand_head(skb2, SKB_DATA_ALIGN(delta), 0,
          GFP_ATOMIC)) {
   kfree_skb(skb2);
   skb2 = ((void*)0);
  }
 }
 return skb2;
}

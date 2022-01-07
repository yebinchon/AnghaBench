
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int shared_frag; } ;


 int skb_headlen (struct sk_buff*) ;
 int skb_split_inside_header (struct sk_buff*,struct sk_buff*,int const,int) ;
 int skb_split_no_header (struct sk_buff*,struct sk_buff*,int const,int) ;
 TYPE_1__* skb_tx (struct sk_buff*) ;

void skb_split(struct sk_buff *skb, struct sk_buff *skb1, const u32 len)
{
 int pos = skb_headlen(skb);

 skb_tx(skb1)->shared_frag = skb_tx(skb)->shared_frag;
 if (len < pos)
  skb_split_inside_header(skb, skb1, len, pos);
 else
  skb_split_no_header(skb, skb1, len, pos);
}

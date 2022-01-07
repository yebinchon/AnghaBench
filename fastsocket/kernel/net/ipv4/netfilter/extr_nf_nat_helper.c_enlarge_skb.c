
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned int len; } ;


 int GFP_ATOMIC ;
 scalar_t__ pskb_expand_head (struct sk_buff*,int ,scalar_t__,int ) ;
 scalar_t__ skb_tailroom (struct sk_buff*) ;

__attribute__((used)) static int enlarge_skb(struct sk_buff *skb, unsigned int extra)
{
 if (skb->len + extra > 65535)
  return 0;

 if (pskb_expand_head(skb, 0, extra - skb_tailroom(skb), GFP_ATOMIC))
  return 0;

 return 1;
}

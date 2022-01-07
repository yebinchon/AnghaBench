
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int GFP_ATOMIC ;
 int pskb_expand_head (struct sk_buff*,int ,int ,int ) ;
 scalar_t__ skb_clone_writable (struct sk_buff*,int) ;
 int skb_cloned (struct sk_buff*) ;

__attribute__((used)) static int make_writable(struct sk_buff *skb, int write_len)
{
 if (!skb_cloned(skb) || skb_clone_writable(skb, write_len))
  return 0;

 return pskb_expand_head(skb, 0, 0, GFP_ATOMIC);
}

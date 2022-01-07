
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned int len; } ;


 int __pskb_pull_tail (struct sk_buff*,unsigned int) ;
 scalar_t__ skb_clone_writable (struct sk_buff*,unsigned int) ;
 int skb_cloned (struct sk_buff*) ;
 unsigned int skb_headlen (struct sk_buff*) ;

int skb_make_writable(struct sk_buff *skb, unsigned int writable_len)
{
 if (writable_len > skb->len)
  return 0;


 if (!skb_cloned(skb)) {
  if (writable_len <= skb_headlen(skb))
   return 1;
 } else if (skb_clone_writable(skb, writable_len))
  return 1;

 if (writable_len <= skb_headlen(skb))
  writable_len = 0;
 else
  writable_len -= skb_headlen(skb);

 return !!__pskb_pull_tail(skb, writable_len);
}

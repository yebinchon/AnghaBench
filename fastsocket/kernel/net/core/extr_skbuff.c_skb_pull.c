
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned int len; } ;


 unsigned char* __skb_pull (struct sk_buff*,unsigned int) ;
 scalar_t__ unlikely (int) ;

unsigned char *skb_pull(struct sk_buff *skb, unsigned int len)
{
 return unlikely(len > skb->len) ? ((void*)0) : __skb_pull(skb, len);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int kfree_skb (struct sk_buff*) ;

int dst_discard(struct sk_buff *skb)
{
 kfree_skb(skb);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;


 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* skb_dequeue (struct sk_buff_head*) ;

void skb_queue_purge(struct sk_buff_head *list)
{
 struct sk_buff *skb;
 while ((skb = skb_dequeue(list)) != ((void*)0))
  kfree_skb(skb);
}

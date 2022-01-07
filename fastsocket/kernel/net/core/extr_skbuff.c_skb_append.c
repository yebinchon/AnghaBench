
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int lock; } ;
struct sk_buff {int dummy; } ;


 int __skb_queue_after (struct sk_buff_head*,struct sk_buff*,struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void skb_append(struct sk_buff *old, struct sk_buff *newsk, struct sk_buff_head *list)
{
 unsigned long flags;

 spin_lock_irqsave(&list->lock, flags);
 __skb_queue_after(list, old, newsk);
 spin_unlock_irqrestore(&list->lock, flags);
}

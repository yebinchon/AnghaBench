
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int lock; } ;
struct sk_buff {int dummy; } ;


 int __skb_queue_head (struct sk_buff_head*,struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void skb_queue_head(struct sk_buff_head *list, struct sk_buff *newsk)
{
 unsigned long flags;

 spin_lock_irqsave(&list->lock, flags);
 __skb_queue_head(list, newsk);
 spin_unlock_irqrestore(&list->lock, flags);
}

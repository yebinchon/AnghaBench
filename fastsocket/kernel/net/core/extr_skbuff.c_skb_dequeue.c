
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int lock; } ;
struct sk_buff {int dummy; } ;


 struct sk_buff* __skb_dequeue (struct sk_buff_head*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct sk_buff *skb_dequeue(struct sk_buff_head *list)
{
 unsigned long flags;
 struct sk_buff *result;

 spin_lock_irqsave(&list->lock, flags);
 result = __skb_dequeue(list);
 spin_unlock_irqrestore(&list->lock, flags);
 return result;
}

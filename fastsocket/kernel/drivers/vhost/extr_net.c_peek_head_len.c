
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct sock {TYPE_1__ sk_receive_queue; } ;
struct sk_buff {int len; } ;


 scalar_t__ likely (struct sk_buff*) ;
 struct sk_buff* skb_peek (TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int peek_head_len(struct sock *sk)
{
 struct sk_buff *head;
 int len = 0;
 unsigned long flags;

 spin_lock_irqsave(&sk->sk_receive_queue.lock, flags);
 head = skb_peek(&sk->sk_receive_queue);
 if (likely(head))
  len = head->len;
 spin_unlock_irqrestore(&sk->sk_receive_queue.lock, flags);
 return len;
}

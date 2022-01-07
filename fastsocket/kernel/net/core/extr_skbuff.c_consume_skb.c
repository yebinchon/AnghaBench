
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int users; int pool_id; } ;


 int DPRINTK (char*,int ,struct sk_buff*,int) ;
 int __kfree_skb (struct sk_buff*) ;
 int atomic_dec_and_test (int *) ;
 int atomic_read (int *) ;
 scalar_t__ likely (int) ;
 int smp_rmb () ;
 int trace_consume_skb (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

void consume_skb(struct sk_buff *skb)
{
 if (unlikely(!skb))
  return;
 DPRINTK("Try to consum skb[%d] 0x%p with user reference %d\n", skb->pool_id, skb, atomic_read(&skb->users));
 if (likely(atomic_read(&skb->users) == 1))
  smp_rmb();
 else if (likely(!atomic_dec_and_test(&skb->users)))
  return;
 trace_consume_skb(skb);
 __kfree_skb(skb);
}

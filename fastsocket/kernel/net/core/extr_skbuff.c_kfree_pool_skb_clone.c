
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skb_pool {int clone_recyc_list; int clone_free_list; } ;
struct sk_buff {scalar_t__ pool_id; } ;


 int BUG_ON (int) ;
 int DPRINTK (char*,scalar_t__,struct sk_buff*,scalar_t__) ;
 int __skb_queue_head (int *,struct sk_buff*) ;
 int in_softirq () ;
 scalar_t__ likely (int) ;
 struct skb_pool* per_cpu_ptr (int ,scalar_t__) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int skb_pools ;
 int skb_queue_head (int *,struct sk_buff*) ;
 scalar_t__ smp_processor_id () ;

__attribute__((used)) static inline void kfree_pool_skb_clone(struct sk_buff *skb)
{
 struct skb_pool *skb_pool;

 BUG_ON(skb->pool_id < 0);

 skb_pool = per_cpu_ptr(skb_pools, skb->pool_id);

 if (likely(skb->pool_id == smp_processor_id())) {
  if (likely(in_softirq())) {

   __skb_queue_head(&skb_pool->clone_free_list, skb);
  } else {

   preempt_disable();
   __skb_queue_head(&skb_pool->clone_free_list, skb);
   preempt_enable();
  }
  DPRINTK("Free clone pool skb[%d] 0x%p on CPU %d into free list\n", skb->pool_id, skb, smp_processor_id());
 } else {
  skb_queue_head(&skb_pool->clone_recyc_list, skb);
  DPRINTK("Free clone pool skb[%d] 0x%p on CPU %d into recycle list\n", skb->pool_id, skb, smp_processor_id());
 }
}

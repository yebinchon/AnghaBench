
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct rxrpc_local {int rejecter; int reject_queue; int usage; } ;


 int BUG () ;
 int CHECK_SLAB_OKAY (int *) ;
 int atomic_inc_not_zero (int *) ;
 int printk (char*) ;
 int rxrpc_queue_work (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

void rxrpc_reject_packet(struct rxrpc_local *local, struct sk_buff *skb)
{
 CHECK_SLAB_OKAY(&local->usage);

 if (!atomic_inc_not_zero(&local->usage)) {
  printk("resurrected on reject\n");
  BUG();
 }

 skb_queue_tail(&local->reject_queue, skb);
 rxrpc_queue_work(&local->rejecter);
}

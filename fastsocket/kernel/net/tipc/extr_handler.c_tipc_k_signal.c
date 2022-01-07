
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue_item {unsigned long data; int next_signal; int handler; } ;
typedef int Handler ;


 unsigned int ENOMEM ;
 unsigned int ENOPROTOOPT ;
 int GFP_ATOMIC ;
 int err (char*) ;
 int handler_enabled ;
 struct queue_item* kmem_cache_alloc (int ,int ) ;
 int list_add_tail (int *,int *) ;
 int qitem_lock ;
 int signal_queue_head ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tasklet_schedule (int *) ;
 int tipc_queue_item_cache ;
 int tipc_tasklet ;

unsigned int tipc_k_signal(Handler routine, unsigned long argument)
{
 struct queue_item *item;

 if (!handler_enabled) {
  err("Signal request ignored by handler\n");
  return -ENOPROTOOPT;
 }

 spin_lock_bh(&qitem_lock);
 item = kmem_cache_alloc(tipc_queue_item_cache, GFP_ATOMIC);
 if (!item) {
  err("Signal queue out of memory\n");
  spin_unlock_bh(&qitem_lock);
  return -ENOMEM;
 }
 item->handler = routine;
 item->data = argument;
 list_add_tail(&item->next_signal, &signal_queue_head);
 spin_unlock_bh(&qitem_lock);
 tasklet_schedule(&tipc_tasklet);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int list; int timer; } ;
struct rpc_wait_queue {unsigned char maxpriority; char const* name; TYPE_1__ timer_list; scalar_t__ qlen; int * tasks; int lock; } ;


 int ARRAY_SIZE (int *) ;
 int INIT_LIST_HEAD (int *) ;
 int __rpc_queue_timer_fn ;
 int rpc_reset_waitqueue_priority (struct rpc_wait_queue*) ;
 int setup_timer (int *,int ,unsigned long) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void __rpc_init_priority_wait_queue(struct rpc_wait_queue *queue, const char *qname, unsigned char nr_queues)
{
 int i;

 spin_lock_init(&queue->lock);
 for (i = 0; i < ARRAY_SIZE(queue->tasks); i++)
  INIT_LIST_HEAD(&queue->tasks[i]);
 queue->maxpriority = nr_queues - 1;
 rpc_reset_waitqueue_priority(queue);
 queue->qlen = 0;
 setup_timer(&queue->timer_list.timer, __rpc_queue_timer_fn, (unsigned long)queue);
 INIT_LIST_HEAD(&queue->timer_list.list);



}

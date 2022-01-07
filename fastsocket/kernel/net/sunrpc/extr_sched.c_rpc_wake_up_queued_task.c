
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_wait_queue {int lock; } ;
struct rpc_task {int dummy; } ;


 int rpc_wake_up_task_queue_locked (struct rpc_wait_queue*,struct rpc_task*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void rpc_wake_up_queued_task(struct rpc_wait_queue *queue, struct rpc_task *task)
{
 spin_lock_bh(&queue->lock);
 rpc_wake_up_task_queue_locked(queue, task);
 spin_unlock_bh(&queue->lock);
}

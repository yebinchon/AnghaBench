
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_wait_queue {int lock; } ;
struct rpc_task {int dummy; } ;


 struct rpc_task* __rpc_find_next_queued (struct rpc_wait_queue*) ;
 int dprintk (char*,struct rpc_wait_queue*,int ) ;
 int rpc_qname (struct rpc_wait_queue*) ;
 int rpc_wake_up_task_queue_locked (struct rpc_wait_queue*,struct rpc_task*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

struct rpc_task *rpc_wake_up_first(struct rpc_wait_queue *queue,
  bool (*func)(struct rpc_task *, void *), void *data)
{
 struct rpc_task *task = ((void*)0);

 dprintk("RPC:       wake_up_first(%p \"%s\")\n",
   queue, rpc_qname(queue));
 spin_lock_bh(&queue->lock);
 task = __rpc_find_next_queued(queue);
 if (task != ((void*)0)) {
  if (func(task, data))
   rpc_wake_up_task_queue_locked(queue, task);
  else
   task = ((void*)0);
 }
 spin_unlock_bh(&queue->lock);

 return task;
}

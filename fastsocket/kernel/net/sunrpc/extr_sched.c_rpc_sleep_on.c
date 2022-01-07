
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_wait_queue {int lock; } ;
struct rpc_task {int tk_priority; } ;
typedef int rpc_action ;


 int BUG_ON (int) ;
 int RPC_IS_ACTIVATED (struct rpc_task*) ;
 int __rpc_sleep_on_priority (struct rpc_wait_queue*,struct rpc_task*,int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void rpc_sleep_on(struct rpc_wait_queue *q, struct rpc_task *task,
    rpc_action action)
{

 BUG_ON(!RPC_IS_ACTIVATED(task));




 spin_lock_bh(&q->lock);
 __rpc_sleep_on_priority(q, task, action, task->tk_priority);
 spin_unlock_bh(&q->lock);
}

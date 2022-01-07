
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lock; } ;
typedef TYPE_1__ wait_queue_head_t ;
struct wait_bit_key {int dummy; } ;
struct rpc_task {int tk_count; int tk_runstate; int tk_client; } ;


 int RPC_TASK_ACTIVE ;
 int TASK_NORMAL ;
 struct wait_bit_key __WAIT_BIT_KEY_INITIALIZER (void*,int ) ;
 int __wake_up_locked_key (TYPE_1__*,int ,struct wait_bit_key*) ;
 int atomic_dec_and_test (int *) ;
 TYPE_1__* bit_waitqueue (void*,int ) ;
 int clear_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int trace_rpc_task_complete (int ,struct rpc_task*,int *) ;
 scalar_t__ waitqueue_active (TYPE_1__*) ;

__attribute__((used)) static int rpc_complete_task(struct rpc_task *task)
{
 void *m = &task->tk_runstate;
 wait_queue_head_t *wq = bit_waitqueue(m, RPC_TASK_ACTIVE);
 struct wait_bit_key k = __WAIT_BIT_KEY_INITIALIZER(m, RPC_TASK_ACTIVE);
 unsigned long flags;
 int ret;

 trace_rpc_task_complete(task->tk_client, task, ((void*)0));

 spin_lock_irqsave(&wq->lock, flags);
 clear_bit(RPC_TASK_ACTIVE, &task->tk_runstate);
 ret = atomic_dec_and_test(&task->tk_count);
 if (waitqueue_active(wq))
  __wake_up_locked_key(wq, TASK_NORMAL, &k);
 spin_unlock_irqrestore(&wq->lock, flags);
 return ret;
}

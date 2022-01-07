
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_wait_queue {int qlen; int * tasks; } ;
struct TYPE_3__ {int list; } ;
struct TYPE_4__ {TYPE_1__ tk_wait; } ;
struct rpc_task {int tk_pid; struct rpc_wait_queue* tk_waitqueue; TYPE_2__ u; } ;


 int BUG_ON (int ) ;
 scalar_t__ RPC_IS_PRIORITY (struct rpc_wait_queue*) ;
 int RPC_IS_QUEUED (struct rpc_task*) ;
 scalar_t__ RPC_IS_SWAPPER (struct rpc_task*) ;
 int __rpc_add_wait_queue_priority (struct rpc_wait_queue*,struct rpc_task*,unsigned char) ;
 int dprintk (char*,int ,struct rpc_wait_queue*,int ) ;
 int list_add (int *,int *) ;
 int list_add_tail (int *,int *) ;
 int rpc_qname (struct rpc_wait_queue*) ;
 int rpc_set_queued (struct rpc_task*) ;
 int smp_wmb () ;

__attribute__((used)) static void __rpc_add_wait_queue(struct rpc_wait_queue *queue,
  struct rpc_task *task,
  unsigned char queue_priority)
{
 BUG_ON (RPC_IS_QUEUED(task));

 if (RPC_IS_PRIORITY(queue))
  __rpc_add_wait_queue_priority(queue, task, queue_priority);
 else if (RPC_IS_SWAPPER(task))
  list_add(&task->u.tk_wait.list, &queue->tasks[0]);
 else
  list_add_tail(&task->u.tk_wait.list, &queue->tasks[0]);
 task->tk_waitqueue = queue;
 queue->qlen++;

 smp_wmb();
 rpc_set_queued(task);

 dprintk("RPC: %5u added to queue %p \"%s\"\n",
   task->tk_pid, queue, rpc_qname(queue));
}

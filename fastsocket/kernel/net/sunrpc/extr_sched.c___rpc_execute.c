
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_wait_queue {int lock; } ;
struct rpc_task {void (* tk_callback ) (struct rpc_task*) ;void (* tk_action ) (struct rpc_task*) ;int tk_status; int tk_pid; int tk_flags; int tk_runstate; struct rpc_wait_queue* tk_waitqueue; int tk_client; } ;


 int BUG_ON (int ) ;
 int ERESTARTSYS ;
 int RPC_IS_ASYNC (struct rpc_task*) ;
 int RPC_IS_QUEUED (struct rpc_task*) ;
 int RPC_TASK_KILLED ;
 int RPC_TASK_QUEUED ;
 int TASK_KILLABLE ;
 int dprintk (char*,int ,...) ;
 int out_of_line_wait_on_bit (int *,int ,int ,int ) ;
 int rpc_clear_running (struct rpc_task*) ;
 int rpc_exit (struct rpc_task*,int) ;
 int rpc_release_task (struct rpc_task*) ;
 int rpc_set_running (struct rpc_task*) ;
 int rpc_wait_bit_killable ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int trace_rpc_task_run_action (int ,struct rpc_task*,void (*) (struct rpc_task*)) ;

__attribute__((used)) static void __rpc_execute(struct rpc_task *task)
{
 struct rpc_wait_queue *queue;
 int task_is_async = RPC_IS_ASYNC(task);
 int status = 0;

 dprintk("RPC: %5u __rpc_execute flags=0x%x\n",
   task->tk_pid, task->tk_flags);

 BUG_ON(RPC_IS_QUEUED(task));

 for (;;) {
  void (*do_action)(struct rpc_task *);




  do_action = task->tk_callback;
  task->tk_callback = ((void*)0);
  if (do_action == ((void*)0)) {






   do_action = task->tk_action;
   if (do_action == ((void*)0))
    break;
  }
  trace_rpc_task_run_action(task->tk_client, task, task->tk_action);
  do_action(task);




  if (!RPC_IS_QUEUED(task))
   continue;
  queue = task->tk_waitqueue;
  spin_lock_bh(&queue->lock);
  if (!RPC_IS_QUEUED(task)) {
   spin_unlock_bh(&queue->lock);
   continue;
  }
  rpc_clear_running(task);
  spin_unlock_bh(&queue->lock);
  if (task_is_async)
   return;


  dprintk("RPC: %5u sync task going to sleep\n", task->tk_pid);
  status = out_of_line_wait_on_bit(&task->tk_runstate,
    RPC_TASK_QUEUED, rpc_wait_bit_killable,
    TASK_KILLABLE);
  if (status == -ERESTARTSYS) {






   dprintk("RPC: %5u got signal\n", task->tk_pid);
   task->tk_flags |= RPC_TASK_KILLED;
   rpc_exit(task, -ERESTARTSYS);
  }
  rpc_set_running(task);
  dprintk("RPC: %5u sync task resuming\n", task->tk_pid);
 }

 dprintk("RPC: %5u return %d, status %d\n", task->tk_pid, status,
   task->tk_status);

 rpc_release_task(task);
}

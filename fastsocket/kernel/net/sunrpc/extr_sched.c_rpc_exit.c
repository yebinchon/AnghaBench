
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int tk_status; int tk_waitqueue; int tk_action; } ;


 scalar_t__ RPC_IS_QUEUED (struct rpc_task*) ;
 int rpc_exit_task ;
 int rpc_wake_up_queued_task (int ,struct rpc_task*) ;

void rpc_exit(struct rpc_task *task, int status)
{
 task->tk_status = status;
 task->tk_action = rpc_exit_task;
 if (RPC_IS_QUEUED(task))
  rpc_wake_up_queued_task(task->tk_waitqueue, task);
}

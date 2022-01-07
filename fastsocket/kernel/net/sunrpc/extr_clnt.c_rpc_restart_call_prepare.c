
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_task {int tk_action; TYPE_1__* tk_ops; } ;
struct TYPE_2__ {int * rpc_call_prepare; } ;


 scalar_t__ RPC_ASSASSINATED (struct rpc_task*) ;
 int call_start ;
 int rpc_prepare_task ;

int
rpc_restart_call_prepare(struct rpc_task *task)
{
 if (RPC_ASSASSINATED(task))
  return 0;
 task->tk_action = call_start;
 if (task->tk_ops->rpc_call_prepare != ((void*)0))
  task->tk_action = rpc_prepare_task;
 return 1;
}

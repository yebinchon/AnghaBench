
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int tk_action; } ;


 scalar_t__ RPC_ASSASSINATED (struct rpc_task*) ;
 int call_start ;

int
rpc_restart_call(struct rpc_task *task)
{
 if (RPC_ASSASSINATED(task))
  return 0;
 task->tk_action = call_start;
 return 1;
}

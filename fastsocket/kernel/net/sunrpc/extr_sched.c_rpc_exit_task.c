
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_task {int * tk_action; int tk_calldata; TYPE_1__* tk_ops; } ;
struct TYPE_2__ {int (* rpc_call_done ) (struct rpc_task*,int ) ;} ;


 int RPC_ASSASSINATED (struct rpc_task*) ;
 int WARN_ON (int ) ;
 int stub1 (struct rpc_task*,int ) ;
 int xprt_release (struct rpc_task*) ;

void rpc_exit_task(struct rpc_task *task)
{
 task->tk_action = ((void*)0);
 if (task->tk_ops->rpc_call_done != ((void*)0)) {
  task->tk_ops->rpc_call_done(task, task->tk_calldata);
  if (task->tk_action != ((void*)0)) {
   WARN_ON(RPC_ASSASSINATED(task));

   xprt_release(task);
  }
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int tk_runstate; } ;


 int RPC_TASK_ACTIVE ;
 int TASK_KILLABLE ;
 int out_of_line_wait_on_bit (int *,int ,int (*) (void*),int ) ;
 int rpc_wait_bit_killable (void*) ;

int __rpc_wait_for_completion_task(struct rpc_task *task, int (*action)(void *))
{
 if (action == ((void*)0))
  action = rpc_wait_bit_killable;
 return out_of_line_wait_on_bit(&task->tk_runstate, RPC_TASK_ACTIVE,
   action, TASK_KILLABLE);
}

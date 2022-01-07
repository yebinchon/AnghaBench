
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int tk_runstate; int tk_client; } ;


 int RPC_TASK_ACTIVE ;
 int rpc_task_set_debuginfo (struct rpc_task*) ;
 int set_bit (int ,int *) ;
 int trace_rpc_task_begin (int ,struct rpc_task*,int *) ;

__attribute__((used)) static void rpc_set_active(struct rpc_task *task)
{
 trace_rpc_task_begin(task->tk_client, task, ((void*)0));

 rpc_task_set_debuginfo(task);
 set_bit(RPC_TASK_ACTIVE, &task->tk_runstate);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int tk_action; } ;


 int call_start ;

void
rpc_call_start(struct rpc_task *task)
{
 task->tk_action = call_start;
}

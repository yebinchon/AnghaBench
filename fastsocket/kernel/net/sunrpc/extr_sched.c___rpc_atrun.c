
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {scalar_t__ tk_status; } ;



__attribute__((used)) static void __rpc_atrun(struct rpc_task *task)
{
 task->tk_status = 0;
}

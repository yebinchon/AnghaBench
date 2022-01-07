
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {unsigned long tk_timeout; } ;


 int __rpc_atrun ;
 int delay_queue ;
 int rpc_sleep_on (int *,struct rpc_task*,int ) ;

void rpc_delay(struct rpc_task *task, unsigned long delay)
{
 task->tk_timeout = delay;
 rpc_sleep_on(&delay_queue, task, __rpc_atrun);
}

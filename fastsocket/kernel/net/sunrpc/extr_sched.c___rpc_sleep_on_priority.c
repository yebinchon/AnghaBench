
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_wait_queue {int dummy; } ;
struct rpc_task {int * tk_callback; int tk_client; int tk_pid; } ;
typedef int * rpc_action ;


 int BUG_ON (int ) ;
 int __rpc_add_timer (struct rpc_wait_queue*,struct rpc_task*) ;
 int __rpc_add_wait_queue (struct rpc_wait_queue*,struct rpc_task*,unsigned char) ;
 int dprintk (char*,int ,int ,int ) ;
 int jiffies ;
 int rpc_qname (struct rpc_wait_queue*) ;
 int trace_rpc_task_sleep (int ,struct rpc_task*,struct rpc_wait_queue*) ;

__attribute__((used)) static void __rpc_sleep_on_priority(struct rpc_wait_queue *q,
  struct rpc_task *task,
  rpc_action action,
  unsigned char queue_priority)
{
 dprintk("RPC: %5u sleep_on(queue \"%s\" time %lu)\n",
   task->tk_pid, rpc_qname(q), jiffies);

 trace_rpc_task_sleep(task->tk_client, task, q);

 __rpc_add_wait_queue(q, task, queue_priority);

 BUG_ON(task->tk_callback != ((void*)0));
 task->tk_callback = action;
 __rpc_add_timer(q, task);
}

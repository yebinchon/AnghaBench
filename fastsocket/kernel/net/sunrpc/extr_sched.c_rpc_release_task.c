
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int tk_workqueue; int tk_count; int tk_pid; } ;


 int BUG_ON (int ) ;
 int RPC_IS_ASYNC (struct rpc_task*) ;
 int RPC_IS_QUEUED (struct rpc_task*) ;
 int atomic_dec_and_test (int *) ;
 int atomic_read (int *) ;
 int dprintk (char*,int ) ;
 int rpc_complete_task (struct rpc_task*) ;
 int rpc_final_put_task (struct rpc_task*,int ) ;
 int rpc_release_resources_task (struct rpc_task*) ;

__attribute__((used)) static void rpc_release_task(struct rpc_task *task)
{
 dprintk("RPC: %5u release task\n", task->tk_pid);

 BUG_ON (RPC_IS_QUEUED(task));

 rpc_release_resources_task(task);






 if (atomic_read(&task->tk_count) != 1 + !RPC_IS_ASYNC(task)) {

  if (!rpc_complete_task(task))
   return;
 } else {
  if (!atomic_dec_and_test(&task->tk_count))
   return;
 }
 rpc_final_put_task(task, task->tk_workqueue);
}

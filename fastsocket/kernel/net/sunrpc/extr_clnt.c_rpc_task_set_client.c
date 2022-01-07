
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int tk_task; int tk_flags; struct rpc_clnt* tk_client; } ;
struct rpc_clnt {int cl_lock; int cl_tasks; scalar_t__ cl_softrtry; int cl_count; } ;


 int RPC_TASK_SOFT ;
 int atomic_inc (int *) ;
 int list_add_tail (int *,int *) ;
 int rpc_task_release_client (struct rpc_task*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static
void rpc_task_set_client(struct rpc_task *task, struct rpc_clnt *clnt)
{
 if (clnt != ((void*)0)) {
  rpc_task_release_client(task);
  task->tk_client = clnt;
  atomic_inc(&clnt->cl_count);
  if (clnt->cl_softrtry)
   task->tk_flags |= RPC_TASK_SOFT;

  spin_lock(&clnt->cl_lock);
  list_add_tail(&task->tk_task, &clnt->cl_tasks);
  spin_unlock(&clnt->cl_lock);
 }
}

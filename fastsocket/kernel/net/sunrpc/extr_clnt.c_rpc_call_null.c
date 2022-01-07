
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task_setup {int flags; int * callback_ops; struct rpc_message* rpc_message; struct rpc_clnt* rpc_client; } ;
struct rpc_task {int dummy; } ;
struct rpc_message {struct rpc_cred* rpc_cred; int * rpc_proc; } ;
struct rpc_cred {int dummy; } ;
struct rpc_clnt {int dummy; } ;


 int rpc_default_ops ;
 struct rpc_task* rpc_run_task (struct rpc_task_setup*) ;
 int rpcproc_null ;

struct rpc_task *rpc_call_null(struct rpc_clnt *clnt, struct rpc_cred *cred, int flags)
{
 struct rpc_message msg = {
  .rpc_proc = &rpcproc_null,
  .rpc_cred = cred,
 };
 struct rpc_task_setup task_setup_data = {
  .rpc_client = clnt,
  .rpc_message = &msg,
  .callback_ops = &rpc_default_ops,
  .flags = flags,
 };
 return rpc_run_task(&task_setup_data);
}

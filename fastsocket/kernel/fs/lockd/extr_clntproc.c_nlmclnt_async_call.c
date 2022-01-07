
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rpc_task {int dummy; } ;
struct rpc_message {struct rpc_cred* rpc_cred; int * rpc_resp; int * rpc_argp; } ;
struct rpc_cred {int dummy; } ;
struct rpc_call_ops {int dummy; } ;
struct nlm_rqst {int a_res; int a_args; } ;


 scalar_t__ IS_ERR (struct rpc_task*) ;
 int PTR_ERR (struct rpc_task*) ;
 struct rpc_task* __nlm_async_call (struct nlm_rqst*,int ,struct rpc_message*,struct rpc_call_ops const*) ;
 int rpc_put_task (struct rpc_task*) ;
 int rpc_wait_for_completion_task (struct rpc_task*) ;

__attribute__((used)) static int nlmclnt_async_call(struct rpc_cred *cred, struct nlm_rqst *req, u32 proc, const struct rpc_call_ops *tk_ops)
{
 struct rpc_message msg = {
  .rpc_argp = &req->a_args,
  .rpc_resp = &req->a_res,
  .rpc_cred = cred,
 };
 struct rpc_task *task;
 int err;

 task = __nlm_async_call(req, proc, &msg, tk_ops);
 if (IS_ERR(task))
  return PTR_ERR(task);
 err = rpc_wait_for_completion_task(task);
 rpc_put_task(task);
 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rpc_message {int * rpc_argp; } ;
struct rpc_call_ops {int dummy; } ;
struct nlm_rqst {int a_res; } ;


 int nlm_do_async_call (struct nlm_rqst*,int ,struct rpc_message*,struct rpc_call_ops const*) ;

int nlm_async_reply(struct nlm_rqst *req, u32 proc, const struct rpc_call_ops *tk_ops)
{
 struct rpc_message msg = {
  .rpc_argp = &req->a_res,
 };
 return nlm_do_async_call(req, proc, &msg, tk_ops);
}

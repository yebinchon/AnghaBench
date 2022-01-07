
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_task {struct rpc_rqst* tk_rqstp; } ;
struct rpc_rqst {struct rpc_cred* rq_cred; } ;
struct rpc_cred {TYPE_1__* cr_ops; } ;
struct TYPE_2__ {struct rpc_cred* (* crbind ) (struct rpc_task*,struct rpc_cred*,int) ;} ;


 scalar_t__ IS_ERR (struct rpc_cred*) ;
 int PTR_ERR (struct rpc_cred*) ;
 int RPCAUTH_LOOKUP_NEW ;
 int RPC_TASK_ASYNC ;
 int RPC_TASK_ROOTCREDS ;
 int put_rpccred (struct rpc_cred*) ;
 struct rpc_cred* rpcauth_bind_new_cred (struct rpc_task*,int) ;
 struct rpc_cred* rpcauth_bind_root_cred (struct rpc_task*,int) ;
 struct rpc_cred* stub1 (struct rpc_task*,struct rpc_cred*,int) ;

__attribute__((used)) static int
rpcauth_bindcred(struct rpc_task *task, struct rpc_cred *cred, int flags)
{
 struct rpc_rqst *req = task->tk_rqstp;
 struct rpc_cred *new;
 int lookupflags = 0;

 if (flags & RPC_TASK_ASYNC)
  lookupflags |= RPCAUTH_LOOKUP_NEW;
 if (cred != ((void*)0))
  new = cred->cr_ops->crbind(task, cred, lookupflags);
 else if (flags & RPC_TASK_ROOTCREDS)
  new = rpcauth_bind_root_cred(task, lookupflags);
 else
  new = rpcauth_bind_new_cred(task, lookupflags);
 if (IS_ERR(new))
  return PTR_ERR(new);
 if (req->rq_cred != ((void*)0))
  put_rpccred(req->rq_cred);
 req->rq_cred = new;
 return 0;
}

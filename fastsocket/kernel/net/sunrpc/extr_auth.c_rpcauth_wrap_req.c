
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_task {int tk_pid; TYPE_1__* tk_rqstp; } ;
struct rpc_cred {TYPE_2__* cr_ops; } ;
typedef int (* kxdrproc_t ) (void*,int *,void*) ;
typedef int __be32 ;
struct TYPE_4__ {int (* crwrap_req ) (struct rpc_task*,int (*) (void*,int *,void*),void*,int *,void*) ;int cr_name; } ;
struct TYPE_3__ {struct rpc_cred* rq_cred; } ;


 int dprintk (char*,int ,int ,struct rpc_cred*) ;
 int stub1 (struct rpc_task*,int (*) (void*,int *,void*),void*,int *,void*) ;

int
rpcauth_wrap_req(struct rpc_task *task, kxdrproc_t encode, void *rqstp,
  __be32 *data, void *obj)
{
 struct rpc_cred *cred = task->tk_rqstp->rq_cred;

 dprintk("RPC: %5u using %s cred %p to wrap rpc data\n",
   task->tk_pid, cred->cr_ops->cr_name, cred);
 if (cred->cr_ops->crwrap_req)
  return cred->cr_ops->crwrap_req(task, encode, rqstp, data, obj);

 return encode(rqstp, data, obj);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rpc_task {int tk_pid; TYPE_1__* tk_rqstp; } ;
struct rpc_cred {TYPE_4__* cr_ops; TYPE_3__* cr_auth; } ;
typedef int __be32 ;
struct TYPE_8__ {int * (* crmarshal ) (struct rpc_task*,int *) ;} ;
struct TYPE_7__ {TYPE_2__* au_ops; } ;
struct TYPE_6__ {int au_name; } ;
struct TYPE_5__ {struct rpc_cred* rq_cred; } ;


 int dprintk (char*,int ,int ,struct rpc_cred*) ;
 int * stub1 (struct rpc_task*,int *) ;

__be32 *
rpcauth_marshcred(struct rpc_task *task, __be32 *p)
{
 struct rpc_cred *cred = task->tk_rqstp->rq_cred;

 dprintk("RPC: %5u marshaling %s cred %p\n",
  task->tk_pid, cred->cr_auth->au_ops->au_name, cred);

 return cred->cr_ops->crmarshal(task, p);
}

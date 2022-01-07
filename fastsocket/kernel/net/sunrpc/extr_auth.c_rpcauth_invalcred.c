
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rpc_task {int tk_pid; TYPE_1__* tk_rqstp; } ;
struct rpc_cred {int cr_flags; TYPE_3__* cr_auth; } ;
struct TYPE_6__ {TYPE_2__* au_ops; } ;
struct TYPE_5__ {int au_name; } ;
struct TYPE_4__ {struct rpc_cred* rq_cred; } ;


 int RPCAUTH_CRED_UPTODATE ;
 int clear_bit (int ,int *) ;
 int dprintk (char*,int ,int ,struct rpc_cred*) ;

void
rpcauth_invalcred(struct rpc_task *task)
{
 struct rpc_cred *cred = task->tk_rqstp->rq_cred;

 dprintk("RPC: %5u invalidating %s cred %p\n",
  task->tk_pid, cred->cr_auth->au_ops->au_name, cred);
 if (cred)
  clear_bit(RPCAUTH_CRED_UPTODATE, &cred->cr_flags);
}

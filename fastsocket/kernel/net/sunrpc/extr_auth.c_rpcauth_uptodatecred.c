
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_task {TYPE_1__* tk_rqstp; } ;
struct rpc_cred {int cr_flags; } ;
struct TYPE_2__ {struct rpc_cred* rq_cred; } ;


 int RPCAUTH_CRED_UPTODATE ;
 scalar_t__ test_bit (int ,int *) ;

int
rpcauth_uptodatecred(struct rpc_task *task)
{
 struct rpc_cred *cred = task->tk_rqstp->rq_cred;

 return cred == ((void*)0) ||
  test_bit(RPCAUTH_CRED_UPTODATE, &cred->cr_flags) != 0;
}

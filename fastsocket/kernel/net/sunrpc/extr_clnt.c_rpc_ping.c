
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_message {int rpc_cred; int * rpc_proc; } ;
struct rpc_clnt {int dummy; } ;
struct TYPE_2__ {int (* lookup_cred ) (int *,int *,int ) ;} ;


 int RPC_TASK_SOFT ;
 int RPC_TASK_SOFTCONN ;
 TYPE_1__ authnull_ops ;
 int put_rpccred (int ) ;
 int rpc_call_sync (struct rpc_clnt*,struct rpc_message*,int) ;
 int rpcproc_null ;
 int stub1 (int *,int *,int ) ;

__attribute__((used)) static int rpc_ping(struct rpc_clnt *clnt)
{
 struct rpc_message msg = {
  .rpc_proc = &rpcproc_null,
 };
 int err;
 msg.rpc_cred = authnull_ops.lookup_cred(((void*)0), ((void*)0), 0);
 err = rpc_call_sync(clnt, &msg, RPC_TASK_SOFT | RPC_TASK_SOFTCONN);
 put_rpccred(msg.rpc_cred);
 return err;
}

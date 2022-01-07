
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rep_connected; } ;
struct rpcrdma_xprt {int rdma_connect; TYPE_1__ rx_ep; } ;
struct rpc_xprt {int reestablish_timeout; } ;
struct rpc_task {scalar_t__ tk_xprt; } ;


 int HZ ;
 int RPC_IS_ASYNC (struct rpc_task*) ;
 int flush_scheduled_work () ;
 struct rpcrdma_xprt* rpcx_to_rdmax (struct rpc_xprt*) ;
 int schedule_delayed_work (int *,int) ;

__attribute__((used)) static void
xprt_rdma_connect(struct rpc_task *task)
{
 struct rpc_xprt *xprt = (struct rpc_xprt *)task->tk_xprt;
 struct rpcrdma_xprt *r_xprt = rpcx_to_rdmax(xprt);

 if (r_xprt->rx_ep.rep_connected != 0) {

  schedule_delayed_work(&r_xprt->rdma_connect,
   xprt->reestablish_timeout);
  xprt->reestablish_timeout <<= 1;
  if (xprt->reestablish_timeout > (30 * HZ))
   xprt->reestablish_timeout = (30 * HZ);
  else if (xprt->reestablish_timeout < (5 * HZ))
   xprt->reestablish_timeout = (5 * HZ);
 } else {
  schedule_delayed_work(&r_xprt->rdma_connect, 0);
  if (!RPC_IS_ASYNC(task))
   flush_scheduled_work();
 }
}

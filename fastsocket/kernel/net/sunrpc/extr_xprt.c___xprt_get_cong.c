
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int cong; int cwnd; } ;
struct rpc_task {int tk_pid; struct rpc_rqst* tk_rqstp; } ;
struct rpc_rqst {int rq_cong; } ;


 scalar_t__ RPCXPRT_CONGESTED (struct rpc_xprt*) ;
 scalar_t__ RPC_CWNDSCALE ;
 int dprintk (char*,int ,int ,int ) ;

__attribute__((used)) static int
__xprt_get_cong(struct rpc_xprt *xprt, struct rpc_task *task)
{
 struct rpc_rqst *req = task->tk_rqstp;

 if (req->rq_cong)
  return 1;
 dprintk("RPC: %5u xprt_cwnd_limited cong = %lu cwnd = %lu\n",
   task->tk_pid, xprt->cong, xprt->cwnd);
 if (RPCXPRT_CONGESTED(xprt))
  return 0;
 req->rq_cong = 1;
 xprt->cong += RPC_CWNDSCALE;
 return 1;
}

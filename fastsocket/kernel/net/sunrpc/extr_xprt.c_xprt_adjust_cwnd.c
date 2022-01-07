
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {unsigned long cwnd; unsigned long cong; } ;
struct rpc_task {struct rpc_xprt* tk_xprt; struct rpc_rqst* tk_rqstp; } ;
struct rpc_rqst {int dummy; } ;


 int ETIMEDOUT ;
 unsigned long RPC_CWNDSCALE ;
 unsigned long RPC_MAXCWND (struct rpc_xprt*) ;
 int __xprt_lock_write_next_cong (struct rpc_xprt*) ;
 int __xprt_put_cong (struct rpc_xprt*,struct rpc_rqst*) ;
 int dprintk (char*,unsigned long,unsigned long,unsigned long) ;

void xprt_adjust_cwnd(struct rpc_task *task, int result)
{
 struct rpc_rqst *req = task->tk_rqstp;
 struct rpc_xprt *xprt = task->tk_xprt;
 unsigned long cwnd = xprt->cwnd;

 if (result >= 0 && cwnd <= xprt->cong) {


  cwnd += (RPC_CWNDSCALE * RPC_CWNDSCALE + (cwnd >> 1)) / cwnd;
  if (cwnd > RPC_MAXCWND(xprt))
   cwnd = RPC_MAXCWND(xprt);
  __xprt_lock_write_next_cong(xprt);
 } else if (result == -ETIMEDOUT) {
  cwnd >>= 1;
  if (cwnd < RPC_CWNDSCALE)
   cwnd = RPC_CWNDSCALE;
 }
 dprintk("RPC:       cong %ld, cwnd was %ld, now %ld\n",
   xprt->cong, xprt->cwnd, cwnd);
 xprt->cwnd = cwnd;
 __xprt_put_cong(xprt, req);
}

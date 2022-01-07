
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int pending; } ;
struct rpc_task {int tk_timeout; struct rpc_rqst* tk_rqstp; } ;
struct rpc_rqst {int rq_timeout; struct rpc_xprt* rq_xprt; } ;
typedef int rpc_action ;


 scalar_t__ RPC_IS_SOFT (struct rpc_task*) ;
 int rpc_sleep_on (int *,struct rpc_task*,int ) ;

void xprt_wait_for_buffer_space(struct rpc_task *task, rpc_action action)
{
 struct rpc_rqst *req = task->tk_rqstp;
 struct rpc_xprt *xprt = req->rq_xprt;

 task->tk_timeout = RPC_IS_SOFT(task) ? req->rq_timeout : 0;
 rpc_sleep_on(&xprt->pending, task, action);
}

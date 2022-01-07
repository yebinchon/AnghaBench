
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_xprt {int transport_lock; TYPE_1__* ops; } ;
struct rpc_task {int tk_status; int tk_pid; struct rpc_rqst* tk_rqstp; } ;
struct rpc_rqst {int rq_reply_bytes_recvd; struct rpc_xprt* rq_xprt; } ;
struct TYPE_2__ {int (* timer ) (struct rpc_task*) ;} ;


 int ETIMEDOUT ;
 int dprintk (char*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct rpc_task*) ;

__attribute__((used)) static void xprt_timer(struct rpc_task *task)
{
 struct rpc_rqst *req = task->tk_rqstp;
 struct rpc_xprt *xprt = req->rq_xprt;

 if (task->tk_status != -ETIMEDOUT)
  return;
 dprintk("RPC: %5u xprt_timer\n", task->tk_pid);

 spin_lock_bh(&xprt->transport_lock);
 if (!req->rq_reply_bytes_recvd) {
  if (xprt->ops->timer)
   xprt->ops->timer(task);
 } else
  task->tk_status = 0;
 spin_unlock_bh(&xprt->transport_lock);
}

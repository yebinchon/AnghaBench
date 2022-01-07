
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_xprt {int transport_lock; TYPE_1__* ops; } ;
struct rpc_task {int tk_pid; struct rpc_rqst* tk_rqstp; } ;
struct rpc_rqst {int rq_reply_bytes_recvd; int rq_bytes_sent; struct rpc_xprt* rq_xprt; } ;
struct TYPE_2__ {int (* reserve_xprt ) (struct rpc_xprt*,struct rpc_task*) ;} ;


 int EAGAIN ;
 int dprintk (char*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct rpc_xprt*,struct rpc_task*) ;

int xprt_prepare_transmit(struct rpc_task *task)
{
 struct rpc_rqst *req = task->tk_rqstp;
 struct rpc_xprt *xprt = req->rq_xprt;
 int err = 0;

 dprintk("RPC: %5u xprt_prepare_transmit\n", task->tk_pid);

 spin_lock_bh(&xprt->transport_lock);
 if (req->rq_reply_bytes_recvd && !req->rq_bytes_sent) {
  err = req->rq_reply_bytes_recvd;
  goto out_unlock;
 }
 if (!xprt->ops->reserve_xprt(xprt, task))
  err = -EAGAIN;
out_unlock:
 spin_unlock_bh(&xprt->transport_lock);
 return err;
}

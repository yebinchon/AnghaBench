
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int recvs; } ;
struct rpc_xprt {int pending; TYPE_2__* ops; TYPE_1__ stat; } ;
struct rpc_task {int tk_pid; struct rpc_rqst* tk_rqstp; } ;
struct TYPE_6__ {int len; } ;
struct rpc_rqst {int rq_reply_bytes_recvd; TYPE_3__ rq_private_buf; int rq_list; int rq_xtime; int rq_rtt; int rq_xid; struct rpc_xprt* rq_xprt; } ;
struct TYPE_5__ {int * timer; } ;


 int dprintk (char*,int ,int ,int) ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 int list_del_init (int *) ;
 int ntohl (int ) ;
 int rpc_wake_up_queued_task (int *,struct rpc_task*) ;
 int smp_wmb () ;
 int xprt_update_rtt (struct rpc_task*) ;

void xprt_complete_rqst(struct rpc_task *task, int copied)
{
 struct rpc_rqst *req = task->tk_rqstp;
 struct rpc_xprt *xprt = req->rq_xprt;

 dprintk("RPC: %5u xid %08x complete (%d bytes received)\n",
   task->tk_pid, ntohl(req->rq_xid), copied);

 xprt->stat.recvs++;
 req->rq_rtt = ktime_sub(ktime_get(), req->rq_xtime);
 if (xprt->ops->timer != ((void*)0))
  xprt_update_rtt(task);

 list_del_init(&req->rq_list);
 req->rq_private_buf.len = copied;


 smp_wmb();
 req->rq_reply_bytes_recvd = copied;
 rpc_wake_up_queued_task(&xprt->pending, task);
}

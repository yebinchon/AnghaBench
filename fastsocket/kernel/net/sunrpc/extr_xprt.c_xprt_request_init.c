
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_xprt {int dummy; } ;
struct rpc_task {int tk_pid; TYPE_2__* tk_client; struct rpc_rqst* tk_rqstp; } ;
struct rpc_rqst {int rq_xid; int * rq_release_snd_buf; int * rq_buffer; struct rpc_xprt* rq_xprt; struct rpc_task* rq_task; int rq_timeout; int rq_list; } ;
struct TYPE_4__ {TYPE_1__* cl_timeout; } ;
struct TYPE_3__ {int to_initval; } ;


 int INIT_LIST_HEAD (int *) ;
 int dprintk (char*,int ,struct rpc_rqst*,int ) ;
 int ntohl (int ) ;
 int xprt_alloc_xid (struct rpc_xprt*) ;
 int xprt_reset_majortimeo (struct rpc_rqst*) ;

__attribute__((used)) static void xprt_request_init(struct rpc_task *task, struct rpc_xprt *xprt)
{
 struct rpc_rqst *req = task->tk_rqstp;

 INIT_LIST_HEAD(&req->rq_list);
 req->rq_timeout = task->tk_client->cl_timeout->to_initval;
 req->rq_task = task;
 req->rq_xprt = xprt;
 req->rq_buffer = ((void*)0);
 req->rq_xid = xprt_alloc_xid(xprt);
 req->rq_release_snd_buf = ((void*)0);
 xprt_reset_majortimeo(req);
 dprintk("RPC: %5u reserved req %p xid %08x\n", task->tk_pid,
   req, ntohl(req->rq_xid));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rpc_xprt {TYPE_3__* ops; int transport_lock; scalar_t__ idle_timeout; scalar_t__ last_used; int timer; int recv; struct rpc_task* snd_task; } ;
struct rpc_task {int tk_pid; struct rpc_rqst* tk_rqstp; TYPE_2__* tk_client; int tk_calldata; TYPE_1__* tk_ops; } ;
struct rpc_rqst {int (* rq_release_snd_buf ) (struct rpc_rqst*) ;int * rq_cred; scalar_t__ rq_buffer; int rq_list; struct rpc_xprt* rq_xprt; } ;
struct TYPE_6__ {int (* buf_free ) (scalar_t__) ;int (* release_request ) (struct rpc_task*) ;int (* release_xprt ) (struct rpc_xprt*,struct rpc_task*) ;} ;
struct TYPE_5__ {int cl_metrics; int cl_xprt; } ;
struct TYPE_4__ {int (* rpc_count_stats ) (struct rpc_task*,int ) ;} ;


 int bc_prealloc (struct rpc_rqst*) ;
 int dprintk (char*,int ,struct rpc_rqst*) ;
 scalar_t__ jiffies ;
 scalar_t__ likely (int) ;
 int list_del (int *) ;
 scalar_t__ list_empty (int *) ;
 int mod_timer (int *,scalar_t__) ;
 int put_rpccred (int *) ;
 struct rpc_xprt* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int rpc_count_iostats (struct rpc_task*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct rpc_task*,int ) ;
 int stub2 (struct rpc_xprt*,struct rpc_task*) ;
 int stub3 (struct rpc_task*) ;
 int stub4 (scalar_t__) ;
 int stub5 (struct rpc_rqst*) ;
 int xprt_free_bc_request (struct rpc_rqst*) ;
 int xprt_free_slot (struct rpc_xprt*,struct rpc_rqst*) ;
 scalar_t__ xprt_has_timer (struct rpc_xprt*) ;
 int xprt_release_write (struct rpc_xprt*,struct rpc_task*) ;

void xprt_release(struct rpc_task *task)
{
 struct rpc_xprt *xprt;
 struct rpc_rqst *req = task->tk_rqstp;

 if (req == ((void*)0)) {
  if (task->tk_client) {
   rcu_read_lock();
   xprt = rcu_dereference(task->tk_client->cl_xprt);
   if (xprt->snd_task == task)
    xprt_release_write(xprt, task);
   rcu_read_unlock();
  }
  return;
 }

 xprt = req->rq_xprt;
 if (task->tk_ops->rpc_count_stats != ((void*)0))
  task->tk_ops->rpc_count_stats(task, task->tk_calldata);
 else if (task->tk_client)
  rpc_count_iostats(task, task->tk_client->cl_metrics);
 spin_lock_bh(&xprt->transport_lock);
 xprt->ops->release_xprt(xprt, task);
 if (xprt->ops->release_request)
  xprt->ops->release_request(task);
 if (!list_empty(&req->rq_list))
  list_del(&req->rq_list);
 xprt->last_used = jiffies;
 if (list_empty(&xprt->recv) && xprt_has_timer(xprt))
  mod_timer(&xprt->timer,
    xprt->last_used + xprt->idle_timeout);
 spin_unlock_bh(&xprt->transport_lock);
 if (req->rq_buffer)
  xprt->ops->buf_free(req->rq_buffer);
 if (req->rq_cred != ((void*)0))
  put_rpccred(req->rq_cred);
 task->tk_rqstp = ((void*)0);
 if (req->rq_release_snd_buf)
  req->rq_release_snd_buf(req);

 dprintk("RPC: %5u release request %p\n", task->tk_pid, req);
 if (likely(!bc_prealloc(req)))
  xprt_free_slot(xprt, req);
 else
  xprt_free_bc_request(req);
}

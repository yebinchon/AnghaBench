
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int sending; struct rpc_task* snd_task; int state; } ;
struct rpc_task {int tk_status; scalar_t__ tk_timeout; int tk_pid; struct rpc_rqst* tk_rqstp; } ;
struct rpc_rqst {int rq_ntrans; scalar_t__ rq_bytes_sent; } ;


 int EAGAIN ;
 int RPC_PRIORITY_HIGH ;
 int RPC_PRIORITY_LOW ;
 int RPC_PRIORITY_NORMAL ;
 int XPRT_LOCKED ;
 scalar_t__ __xprt_get_cong (struct rpc_xprt*,struct rpc_task*) ;
 int dprintk (char*,int ,struct rpc_xprt*) ;
 int rpc_sleep_on_priority (int *,struct rpc_task*,int *,int) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int xprt_clear_locked (struct rpc_xprt*) ;

int xprt_reserve_xprt_cong(struct rpc_xprt *xprt, struct rpc_task *task)
{
 struct rpc_rqst *req = task->tk_rqstp;
 int priority;

 if (test_and_set_bit(XPRT_LOCKED, &xprt->state)) {
  if (task == xprt->snd_task)
   return 1;
  goto out_sleep;
 }
 if (req == ((void*)0)) {
  xprt->snd_task = task;
  return 1;
 }
 if (__xprt_get_cong(xprt, task)) {
  xprt->snd_task = task;
  req->rq_bytes_sent = 0;
  req->rq_ntrans++;
  return 1;
 }
 xprt_clear_locked(xprt);
out_sleep:
 dprintk("RPC: %5u failed to lock transport %p\n", task->tk_pid, xprt);
 task->tk_timeout = 0;
 task->tk_status = -EAGAIN;
 if (req == ((void*)0))
  priority = RPC_PRIORITY_LOW;
 else if (!req->rq_ntrans)
  priority = RPC_PRIORITY_NORMAL;
 else
  priority = RPC_PRIORITY_HIGH;
 rpc_sleep_on_priority(&xprt->sending, task, ((void*)0), priority);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int connect_start; } ;
struct rpc_xprt {TYPE_3__* ops; TYPE_2__ stat; int state; int pending; } ;
struct rpc_task {TYPE_1__* tk_rqstp; int tk_timeout; int tk_status; int tk_pid; struct rpc_xprt* tk_xprt; } ;
struct TYPE_6__ {int (* connect ) (struct rpc_task*) ;int (* close ) (struct rpc_xprt*) ;} ;
struct TYPE_4__ {int rq_timeout; scalar_t__ rq_bytes_sent; } ;


 int EAGAIN ;
 int XPRT_CLOSE_WAIT ;
 int XPRT_CLOSING ;
 int dprintk (char*,int ,struct rpc_xprt*,char*) ;
 int jiffies ;
 int rpc_sleep_on (int *,struct rpc_task*,int ) ;
 int stub1 (struct rpc_xprt*) ;
 int stub2 (struct rpc_task*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int xprt_bound (struct rpc_xprt*) ;
 int xprt_connect_status ;
 scalar_t__ xprt_connected (struct rpc_xprt*) ;
 int xprt_lock_write (struct rpc_xprt*,struct rpc_task*) ;
 int xprt_release_write (struct rpc_xprt*,struct rpc_task*) ;
 scalar_t__ xprt_test_and_set_connecting (struct rpc_xprt*) ;

void xprt_connect(struct rpc_task *task)
{
 struct rpc_xprt *xprt = task->tk_xprt;

 dprintk("RPC: %5u xprt_connect xprt %p %s connected\n", task->tk_pid,
   xprt, (xprt_connected(xprt) ? "is" : "is not"));

 if (!xprt_bound(xprt)) {
  task->tk_status = -EAGAIN;
  return;
 }
 if (!xprt_lock_write(xprt, task))
  return;

 if (test_and_clear_bit(XPRT_CLOSE_WAIT, &xprt->state))
  xprt->ops->close(xprt);

 if (xprt_connected(xprt))
  xprt_release_write(xprt, task);
 else {
  if (task->tk_rqstp)
   task->tk_rqstp->rq_bytes_sent = 0;

  task->tk_timeout = task->tk_rqstp->rq_timeout;
  rpc_sleep_on(&xprt->pending, task, xprt_connect_status);

  if (test_bit(XPRT_CLOSING, &xprt->state))
   return;
  if (xprt_test_and_set_connecting(xprt))
   return;
  xprt->stat.connect_start = jiffies;
  xprt->ops->connect(task);
 }
}

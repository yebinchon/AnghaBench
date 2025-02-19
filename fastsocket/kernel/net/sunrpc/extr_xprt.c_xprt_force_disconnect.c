
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int transport_lock; int task_cleanup; int state; } ;


 int EAGAIN ;
 int XPRT_CLOSE_WAIT ;
 int XPRT_LOCKED ;
 int queue_work (int ,int *) ;
 int rpciod_workqueue ;
 int set_bit (int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int xprt_wake_pending_tasks (struct rpc_xprt*,int ) ;

void xprt_force_disconnect(struct rpc_xprt *xprt)
{

 spin_lock_bh(&xprt->transport_lock);
 set_bit(XPRT_CLOSE_WAIT, &xprt->state);

 if (test_and_set_bit(XPRT_LOCKED, &xprt->state) == 0)
  queue_work(rpciod_workqueue, &xprt->task_cleanup);
 xprt_wake_pending_tasks(xprt, -EAGAIN);
 spin_unlock_bh(&xprt->transport_lock);
}

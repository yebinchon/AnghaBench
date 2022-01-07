
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int transport_lock; int task_cleanup; int state; int recv; } ;


 int XPRT_CONNECTION_CLOSE ;
 int XPRT_LOCKED ;
 int list_empty (int *) ;
 int queue_work (int ,int *) ;
 int rpciod_workqueue ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static void
xprt_init_autodisconnect(unsigned long data)
{
 struct rpc_xprt *xprt = (struct rpc_xprt *)data;

 spin_lock(&xprt->transport_lock);
 if (!list_empty(&xprt->recv))
  goto out_abort;
 if (test_and_set_bit(XPRT_LOCKED, &xprt->state))
  goto out_abort;
 spin_unlock(&xprt->transport_lock);
 set_bit(XPRT_CONNECTION_CLOSE, &xprt->state);
 queue_work(rpciod_workqueue, &xprt->task_cleanup);
 return;
out_abort:
 spin_unlock(&xprt->transport_lock);
}

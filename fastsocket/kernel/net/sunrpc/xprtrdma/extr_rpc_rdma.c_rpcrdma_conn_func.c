
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcrdma_ep {scalar_t__ rep_connected; struct rpc_xprt* rep_xprt; } ;
struct rpc_xprt {scalar_t__ connect_cookie; int transport_lock; } ;


 int ENOTCONN ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ xprt_test_and_clear_connected (struct rpc_xprt*) ;
 int xprt_test_and_set_connected (struct rpc_xprt*) ;
 int xprt_wake_pending_tasks (struct rpc_xprt*,int ) ;

void
rpcrdma_conn_func(struct rpcrdma_ep *ep)
{
 struct rpc_xprt *xprt = ep->rep_xprt;

 spin_lock_bh(&xprt->transport_lock);
 if (++xprt->connect_cookie == 0)
  ++xprt->connect_cookie;
 if (ep->rep_connected > 0) {
  if (!xprt_test_and_set_connected(xprt))
   xprt_wake_pending_tasks(xprt, 0);
 } else {
  if (xprt_test_and_clear_connected(xprt))
   xprt_wake_pending_tasks(xprt, -ENOTCONN);
 }
 spin_unlock_bh(&xprt->transport_lock);
}

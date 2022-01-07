
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int transport_lock; } ;


 int EAGAIN ;
 int dprintk (char*,struct rpc_xprt*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int xprt_clear_connected (struct rpc_xprt*) ;
 int xprt_wake_pending_tasks (struct rpc_xprt*,int ) ;

void xprt_disconnect_done(struct rpc_xprt *xprt)
{
 dprintk("RPC:       disconnected transport %p\n", xprt);
 spin_lock_bh(&xprt->transport_lock);
 xprt_clear_connected(xprt);
 xprt_wake_pending_tasks(xprt, -EAGAIN);
 spin_unlock_bh(&xprt->transport_lock);
}

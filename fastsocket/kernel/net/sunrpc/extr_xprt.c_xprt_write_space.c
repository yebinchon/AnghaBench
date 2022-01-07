
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int transport_lock; scalar_t__ snd_task; int pending; } ;


 int dprintk (char*,struct rpc_xprt*) ;
 int rpc_wake_up_queued_task (int *,scalar_t__) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void xprt_write_space(struct rpc_xprt *xprt)
{
 spin_lock_bh(&xprt->transport_lock);
 if (xprt->snd_task) {
  dprintk("RPC:       write space: waking waiting task on "
    "xprt %p\n", xprt);
  rpc_wake_up_queued_task(&xprt->pending, xprt->snd_task);
 }
 spin_unlock_bh(&xprt->transport_lock);
}

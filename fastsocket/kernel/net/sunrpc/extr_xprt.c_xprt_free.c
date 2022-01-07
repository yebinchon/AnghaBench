
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int xprt_net; } ;


 int kfree (struct rpc_xprt*) ;
 int put_net (int ) ;
 int xprt_free_all_slots (struct rpc_xprt*) ;

void xprt_free(struct rpc_xprt *xprt)
{
 put_net(xprt->xprt_net);
 xprt_free_all_slots(xprt);
 kfree(xprt);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int count; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int xprt_destroy (struct rpc_xprt*) ;

void xprt_put(struct rpc_xprt *xprt)
{
 if (atomic_dec_and_test(&xprt->count))
  xprt_destroy(xprt);
}

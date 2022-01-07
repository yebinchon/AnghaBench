
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int count; } ;


 scalar_t__ atomic_inc_not_zero (int *) ;

struct rpc_xprt *xprt_get(struct rpc_xprt *xprt)
{
 if (atomic_inc_not_zero(&xprt->count))
  return xprt;
 return ((void*)0);
}

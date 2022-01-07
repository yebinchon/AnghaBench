
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {scalar_t__ idle_timeout; } ;



__attribute__((used)) static inline int xprt_has_timer(struct rpc_xprt *xprt)
{
 return xprt->idle_timeout != 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int xid; } ;
typedef int __be32 ;



__attribute__((used)) static inline __be32 xprt_alloc_xid(struct rpc_xprt *xprt)
{
 return xprt->xid++;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int xid; } ;


 int net_random () ;

__attribute__((used)) static inline void xprt_init_xid(struct rpc_xprt *xprt)
{
 xprt->xid = net_random();
}

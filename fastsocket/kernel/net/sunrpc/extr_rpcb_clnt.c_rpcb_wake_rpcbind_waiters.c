
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int binding; } ;


 int rpc_wake_up_status (int *,int) ;
 int xprt_clear_binding (struct rpc_xprt*) ;

__attribute__((used)) static void rpcb_wake_rpcbind_waiters(struct rpc_xprt *xprt, int status)
{
 xprt_clear_binding(xprt);
 rpc_wake_up_status(&xprt->binding, status);
}

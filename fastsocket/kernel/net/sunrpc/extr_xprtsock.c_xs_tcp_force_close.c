
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int state; } ;


 int XPRT_CONNECTION_CLOSE ;
 int set_bit (int ,int *) ;
 int xprt_force_disconnect (struct rpc_xprt*) ;

__attribute__((used)) static void xs_tcp_force_close(struct rpc_xprt *xprt)
{
 set_bit(XPRT_CONNECTION_CLOSE, &xprt->state);
 xprt_force_disconnect(xprt);
}

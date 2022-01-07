
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int dummy; } ;


 int xprt_disconnect_done (struct rpc_xprt*) ;
 int xs_sock_reset_connection_flags (struct rpc_xprt*) ;

__attribute__((used)) static void xs_sock_mark_closed(struct rpc_xprt *xprt)
{
 xs_sock_reset_connection_flags(xprt);

 xprt_disconnect_done(xprt);
}

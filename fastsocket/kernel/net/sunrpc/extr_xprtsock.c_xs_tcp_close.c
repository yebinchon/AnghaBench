
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int state; } ;


 int XPRT_CONNECTION_CLOSE ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int xs_close (struct rpc_xprt*) ;
 int xs_tcp_shutdown (struct rpc_xprt*) ;

__attribute__((used)) static void xs_tcp_close(struct rpc_xprt *xprt)
{
 if (test_and_clear_bit(XPRT_CONNECTION_CLOSE, &xprt->state))
  xs_close(xprt);
 else
  xs_tcp_shutdown(xprt);
}

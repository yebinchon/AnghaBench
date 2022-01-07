
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int state; } ;


 int XPRT_CLOSE_WAIT ;
 int XPRT_CLOSING ;
 int XPRT_CONNECTION_ABORT ;
 int XPRT_CONNECTION_CLOSE ;
 int clear_bit (int ,int *) ;
 int smp_mb__after_clear_bit () ;
 int smp_mb__before_clear_bit () ;

__attribute__((used)) static void xs_sock_reset_connection_flags(struct rpc_xprt *xprt)
{
 smp_mb__before_clear_bit();
 clear_bit(XPRT_CONNECTION_ABORT, &xprt->state);
 clear_bit(XPRT_CONNECTION_CLOSE, &xprt->state);
 clear_bit(XPRT_CLOSE_WAIT, &xprt->state);
 clear_bit(XPRT_CLOSING, &xprt->state);
 smp_mb__after_clear_bit();
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int sending; int state; } ;


 scalar_t__ RPCXPRT_CONGESTED (struct rpc_xprt*) ;
 int XPRT_LOCKED ;
 int __xprt_lock_write_cong_func ;
 scalar_t__ rpc_wake_up_first (int *,int ,struct rpc_xprt*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int xprt_clear_locked (struct rpc_xprt*) ;

__attribute__((used)) static void __xprt_lock_write_next_cong(struct rpc_xprt *xprt)
{
 if (test_and_set_bit(XPRT_LOCKED, &xprt->state))
  return;
 if (RPCXPRT_CONGESTED(xprt))
  goto out_unlock;
 if (rpc_wake_up_first(&xprt->sending, __xprt_lock_write_cong_func, xprt))
  return;
out_unlock:
 xprt_clear_locked(xprt);
}

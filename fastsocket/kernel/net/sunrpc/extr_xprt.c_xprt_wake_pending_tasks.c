
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int pending; } ;


 int rpc_wake_up (int *) ;
 int rpc_wake_up_status (int *,int) ;

void xprt_wake_pending_tasks(struct rpc_xprt *xprt, int status)
{
 if (status < 0)
  rpc_wake_up_status(&xprt->pending, status);
 else
  rpc_wake_up(&xprt->pending);
}

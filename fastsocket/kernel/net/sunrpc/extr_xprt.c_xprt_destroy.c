
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_xprt {TYPE_1__* ops; int task_cleanup; int backlog; int sending; int pending; int binding; int timer; } ;
struct TYPE_2__ {int (* destroy ) (struct rpc_xprt*) ;} ;


 int cancel_work_sync (int *) ;
 int del_timer_sync (int *) ;
 int dprintk (char*,struct rpc_xprt*) ;
 int rpc_destroy_wait_queue (int *) ;
 int stub1 (struct rpc_xprt*) ;

__attribute__((used)) static void xprt_destroy(struct rpc_xprt *xprt)
{
 dprintk("RPC:       destroying transport %p\n", xprt);
 del_timer_sync(&xprt->timer);

 rpc_destroy_wait_queue(&xprt->binding);
 rpc_destroy_wait_queue(&xprt->pending);
 rpc_destroy_wait_queue(&xprt->sending);
 rpc_destroy_wait_queue(&xprt->backlog);
 cancel_work_sync(&xprt->task_cleanup);



 xprt->ops->destroy(xprt);
}

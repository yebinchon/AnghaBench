
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_xprt {TYPE_1__* ops; int bind_timeout; } ;
struct rpc_task {int tk_timeout; int tk_action; struct rpc_xprt* tk_xprt; } ;
struct TYPE_2__ {int (* rpcbind ) (struct rpc_task*) ;} ;


 int call_bind_status ;
 int call_connect ;
 int dprint_status (struct rpc_task*) ;
 int stub1 (struct rpc_task*) ;
 int xprt_bound (struct rpc_xprt*) ;

__attribute__((used)) static void
call_bind(struct rpc_task *task)
{
 struct rpc_xprt *xprt = task->tk_xprt;

 dprint_status(task);

 task->tk_action = call_connect;
 if (!xprt_bound(xprt)) {
  task->tk_action = call_bind_status;
  task->tk_timeout = xprt->bind_timeout;
  xprt->ops->rpcbind(task);
 }
}

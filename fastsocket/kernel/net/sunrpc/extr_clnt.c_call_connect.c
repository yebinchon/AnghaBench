
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int dummy; } ;
struct rpc_task {scalar_t__ tk_status; int tk_action; int tk_pid; struct rpc_xprt* tk_xprt; } ;


 int call_connect_status ;
 int call_transmit ;
 int dprintk (char*,int ,struct rpc_xprt*,char*) ;
 int xprt_connect (struct rpc_task*) ;
 scalar_t__ xprt_connected (struct rpc_xprt*) ;

__attribute__((used)) static void
call_connect(struct rpc_task *task)
{
 struct rpc_xprt *xprt = task->tk_xprt;

 dprintk("RPC: %5u call_connect xprt %p %s connected\n",
   task->tk_pid, xprt,
   (xprt_connected(xprt) ? "is" : "is not"));

 task->tk_action = call_transmit;
 if (!xprt_connected(xprt)) {
  task->tk_action = call_connect_status;
  if (task->tk_status < 0)
   return;
  xprt_connect(task);
 }
}

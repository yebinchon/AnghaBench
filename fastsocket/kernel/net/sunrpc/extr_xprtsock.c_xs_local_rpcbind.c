
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int tk_xprt; } ;


 int xprt_set_bound (int ) ;

__attribute__((used)) static void xs_local_rpcbind(struct rpc_task *task)
{
 xprt_set_bound(task->tk_xprt);
}

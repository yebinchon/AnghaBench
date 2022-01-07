
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_task {TYPE_1__* tk_rqstp; } ;
struct TYPE_2__ {int rq_xprt; } ;


 int xprt_release_write (int ,struct rpc_task*) ;

void xprt_end_transmit(struct rpc_task *task)
{
 xprt_release_write(task->tk_rqstp->rq_xprt, task);
}

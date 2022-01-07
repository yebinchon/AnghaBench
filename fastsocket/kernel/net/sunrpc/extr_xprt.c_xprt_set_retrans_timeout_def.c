
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_task {TYPE_1__* tk_rqstp; int tk_timeout; } ;
struct TYPE_2__ {int rq_timeout; } ;



void xprt_set_retrans_timeout_def(struct rpc_task *task)
{
 task->tk_timeout = task->tk_rqstp->rq_timeout;
}

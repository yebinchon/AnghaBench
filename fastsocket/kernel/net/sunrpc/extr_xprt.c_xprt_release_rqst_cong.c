
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int tk_rqstp; int tk_xprt; } ;


 int __xprt_put_cong (int ,int ) ;

void xprt_release_rqst_cong(struct rpc_task *task)
{
 __xprt_put_cong(task->tk_xprt, task->tk_rqstp);
}

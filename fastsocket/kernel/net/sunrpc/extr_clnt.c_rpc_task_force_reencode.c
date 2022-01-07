
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_task {TYPE_2__* tk_rqstp; } ;
struct TYPE_3__ {scalar_t__ len; } ;
struct TYPE_4__ {scalar_t__ rq_bytes_sent; TYPE_1__ rq_snd_buf; } ;



__attribute__((used)) static inline void
rpc_task_force_reencode(struct rpc_task *task)
{
 task->tk_rqstp->rq_snd_buf.len = 0;
 task->tk_rqstp->rq_bytes_sent = 0;
}

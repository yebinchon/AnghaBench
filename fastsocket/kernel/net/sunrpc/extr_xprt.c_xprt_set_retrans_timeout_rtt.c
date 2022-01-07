
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* rpc_proc; } ;
struct rpc_task {unsigned long tk_timeout; struct rpc_rqst* tk_rqstp; struct rpc_clnt* tk_client; TYPE_3__ tk_msg; } ;
struct rpc_rtt {int dummy; } ;
struct rpc_rqst {unsigned long rq_retries; } ;
struct rpc_clnt {TYPE_1__* cl_timeout; struct rpc_rtt* cl_rtt; } ;
struct TYPE_5__ {int p_timer; } ;
struct TYPE_4__ {unsigned long to_maxval; } ;


 unsigned long rpc_calc_rto (struct rpc_rtt*,int) ;
 unsigned long rpc_ntimeo (struct rpc_rtt*,int) ;

void xprt_set_retrans_timeout_rtt(struct rpc_task *task)
{
 int timer = task->tk_msg.rpc_proc->p_timer;
 struct rpc_clnt *clnt = task->tk_client;
 struct rpc_rtt *rtt = clnt->cl_rtt;
 struct rpc_rqst *req = task->tk_rqstp;
 unsigned long max_timeout = clnt->cl_timeout->to_maxval;

 task->tk_timeout = rpc_calc_rto(rtt, timer);
 task->tk_timeout <<= rpc_ntimeo(rtt, timer) + req->rq_retries;
 if (task->tk_timeout > max_timeout || task->tk_timeout == 0)
  task->tk_timeout = max_timeout;
}

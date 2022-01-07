
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_timeout {scalar_t__ to_retries; int to_increment; scalar_t__ to_maxval; scalar_t__ to_exponential; } ;
struct rpc_rqst {scalar_t__ rq_majortimeo; scalar_t__ rq_timeout; TYPE_2__* rq_task; } ;
struct TYPE_4__ {TYPE_1__* tk_client; } ;
struct TYPE_3__ {struct rpc_timeout* cl_timeout; } ;


 scalar_t__ jiffies ;

__attribute__((used)) static void xprt_reset_majortimeo(struct rpc_rqst *req)
{
 const struct rpc_timeout *to = req->rq_task->tk_client->cl_timeout;

 req->rq_majortimeo = req->rq_timeout;
 if (to->to_exponential)
  req->rq_majortimeo <<= to->to_retries;
 else
  req->rq_majortimeo += to->to_increment * to->to_retries;
 if (req->rq_majortimeo > to->to_maxval || req->rq_majortimeo == 0)
  req->rq_majortimeo = to->to_maxval;
 req->rq_majortimeo += jiffies;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct svc_rqst {TYPE_3__* rq_server; TYPE_2__* rq_xprt; } ;
struct TYPE_6__ {scalar_t__ sv_max_payload; } ;
struct TYPE_5__ {TYPE_1__* xpt_class; } ;
struct TYPE_4__ {scalar_t__ xcl_max_payload; } ;



u32 svc_max_payload(const struct svc_rqst *rqstp)
{
 u32 max = rqstp->rq_xprt->xpt_class->xcl_max_payload;

 if (rqstp->rq_server->sv_max_payload < max)
  max = rqstp->rq_server->sv_max_payload;
 return max;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_rqst {TYPE_1__* rq_authop; } ;
struct TYPE_2__ {int (* set_client ) (struct svc_rqst*) ;} ;


 int stub1 (struct svc_rqst*) ;

int svc_set_client(struct svc_rqst *rqstp)
{
 return rqstp->rq_authop->set_client(rqstp);
}

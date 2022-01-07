
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_rqst {int rq_proc; TYPE_1__* rq_authop; int * rq_client; } ;
struct TYPE_2__ {int flavour; } ;




 int SVC_DENIED ;
 int SVC_OK ;
 int is_callback (int ) ;
 int svc_set_client (struct svc_rqst*) ;

__attribute__((used)) static int lockd_authenticate(struct svc_rqst *rqstp)
{
 rqstp->rq_client = ((void*)0);
 switch (rqstp->rq_authop->flavour) {
  case 129:
  case 128:
   if (rqstp->rq_proc == 0)
    return SVC_OK;
   if (is_callback(rqstp->rq_proc)) {



    return SVC_OK;
   }
   return svc_set_client(rqstp);
 }
 return SVC_DENIED;
}

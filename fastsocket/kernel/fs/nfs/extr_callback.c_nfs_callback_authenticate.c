
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_rqst {int rq_proc; TYPE_1__* rq_authop; } ;
struct TYPE_2__ {int flavour; } ;


 int CB_NULL ;


 int SVC_DROP ;
 int SVC_OK ;
 int svc_is_backchannel (struct svc_rqst*) ;

__attribute__((used)) static int nfs_callback_authenticate(struct svc_rqst *rqstp)
{
 switch (rqstp->rq_authop->flavour) {
 case 128:
  if (rqstp->rq_proc != CB_NULL)
   return SVC_DROP;
  break;
 case 129:

   if (svc_is_backchannel(rqstp))
   return SVC_DROP;
 }
 return SVC_OK;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {scalar_t__ rq_gssclient; scalar_t__ rq_flavor; } ;
struct svc_export {int ex_nflavors; scalar_t__ ex_client; struct exp_flavor_info* ex_flavors; } ;
struct exp_flavor_info {scalar_t__ pseudoflavor; } ;
typedef int __be32 ;


 scalar_t__ RPC_AUTH_NULL ;
 scalar_t__ RPC_AUTH_UNIX ;
 int nfserr_wrongsec ;

__be32 check_nfsd_access(struct svc_export *exp, struct svc_rqst *rqstp)
{
 struct exp_flavor_info *f;
 struct exp_flavor_info *end = exp->ex_flavors + exp->ex_nflavors;


 if (exp->ex_client == rqstp->rq_gssclient)
  return 0;

 for (f = exp->ex_flavors; f < end; f++) {
  if (f->pseudoflavor == rqstp->rq_flavor)
   return 0;
 }

 if (exp->ex_nflavors == 0) {
  if (rqstp->rq_flavor == RPC_AUTH_NULL ||
      rqstp->rq_flavor == RPC_AUTH_UNIX)
   return 0;
 }
 return nfserr_wrongsec;
}

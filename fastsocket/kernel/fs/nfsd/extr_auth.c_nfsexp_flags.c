
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {scalar_t__ rq_flavor; } ;
struct svc_export {int ex_nflavors; int ex_flags; struct exp_flavor_info* ex_flavors; } ;
struct exp_flavor_info {scalar_t__ pseudoflavor; int flags; } ;



int nfsexp_flags(struct svc_rqst *rqstp, struct svc_export *exp)
{
 struct exp_flavor_info *f;
 struct exp_flavor_info *end = exp->ex_flavors + exp->ex_nflavors;

 for (f = exp->ex_flavors; f < end; f++) {
  if (f->pseudoflavor == rqstp->rq_flavor)
   return f->flags;
 }
 return exp->ex_flags;

}

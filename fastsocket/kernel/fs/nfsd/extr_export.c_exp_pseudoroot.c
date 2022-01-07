
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_rqst {int dummy; } ;
struct svc_fh {int dummy; } ;
struct TYPE_2__ {int dentry; } ;
struct svc_export {TYPE_1__ ex_path; } ;
typedef scalar_t__ __be32 ;


 scalar_t__ IS_ERR (struct svc_export*) ;
 int PTR_ERR (struct svc_export*) ;
 scalar_t__ check_nfsd_access (struct svc_export*,struct svc_rqst*) ;
 int exp_put (struct svc_export*) ;
 scalar_t__ fh_compose (struct svc_fh*,struct svc_export*,int ,int *) ;
 int fh_put (struct svc_fh*) ;
 struct svc_export* find_fsidzero_export (struct svc_rqst*) ;
 scalar_t__ nfserrno (int ) ;

__be32
exp_pseudoroot(struct svc_rqst *rqstp, struct svc_fh *fhp)
{
 struct svc_export *exp;
 __be32 rv;

 exp = find_fsidzero_export(rqstp);
 if (IS_ERR(exp))
  return nfserrno(PTR_ERR(exp));
 rv = fh_compose(fhp, exp, exp->ex_path.dentry, ((void*)0));
 if (rv)
  goto out;
 rv = check_nfsd_access(exp, rqstp);
 if (rv)
  fh_put(fhp);
out:
 exp_put(exp);
 return rv;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct svc_rqst {int dummy; } ;
struct svc_fh {int dummy; } ;
struct iattr {int ia_valid; } ;
typedef int __be32 ;


 int ATTR_GID ;
 int ATTR_MODE ;
 int ATTR_UID ;
 scalar_t__ current_fsuid () ;
 int nfsd_setattr (struct svc_rqst*,struct svc_fh*,struct iattr*,int ,int ) ;

__attribute__((used)) static __be32
nfsd_create_setattr(struct svc_rqst *rqstp, struct svc_fh *resfhp,
   struct iattr *iap)
{



 iap->ia_valid &= ~ATTR_MODE;





 if (current_fsuid() != 0)
  iap->ia_valid &= ~(ATTR_UID|ATTR_GID);
 if (iap->ia_valid)
  return nfsd_setattr(rqstp, resfhp, iap, 0, (time_t)0);
 return 0;
}

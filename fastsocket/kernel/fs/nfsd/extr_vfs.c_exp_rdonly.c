
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct svc_export {int dummy; } ;


 int NFSEXP_READONLY ;
 int nfsexp_flags (struct svc_rqst*,struct svc_export*) ;

__attribute__((used)) static int exp_rdonly(struct svc_rqst *rqstp, struct svc_export *exp)
{
 return nfsexp_flags(rqstp, exp) & NFSEXP_READONLY;
}

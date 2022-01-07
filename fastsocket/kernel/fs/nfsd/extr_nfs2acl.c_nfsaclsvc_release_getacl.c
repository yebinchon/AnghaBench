
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct nfsd3_getaclres {int acl_default; int acl_access; int fh; } ;
typedef int __be32 ;


 int fh_put (int *) ;
 int posix_acl_release (int ) ;

__attribute__((used)) static int nfsaclsvc_release_getacl(struct svc_rqst *rqstp, __be32 *p,
  struct nfsd3_getaclres *resp)
{
 fh_put(&resp->fh);
 posix_acl_release(resp->acl_access);
 posix_acl_release(resp->acl_default);
 return 1;
}

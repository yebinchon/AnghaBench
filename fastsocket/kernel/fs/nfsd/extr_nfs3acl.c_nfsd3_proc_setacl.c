
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svc_fh ;
struct svc_rqst {int dummy; } ;
struct nfsd3_setaclargs {int acl_default; int acl_access; int fh; } ;
struct nfsd3_attrstat {int fh; } ;
typedef scalar_t__ __be32 ;


 int ACL_TYPE_ACCESS ;
 int ACL_TYPE_DEFAULT ;
 int NFSD_MAY_SATTR ;
 int RETURN_STATUS (scalar_t__) ;
 int * fh_copy (int *,int *) ;
 scalar_t__ fh_verify (struct svc_rqst*,int *,int ,int ) ;
 int nfsd_set_posix_acl (int *,int ,int ) ;
 scalar_t__ nfserrno (int ) ;
 int posix_acl_release (int ) ;

__attribute__((used)) static __be32 nfsd3_proc_setacl(struct svc_rqst * rqstp,
  struct nfsd3_setaclargs *argp,
  struct nfsd3_attrstat *resp)
{
 svc_fh *fh;
 __be32 nfserr = 0;

 fh = fh_copy(&resp->fh, &argp->fh);
 nfserr = fh_verify(rqstp, &resp->fh, 0, NFSD_MAY_SATTR);

 if (!nfserr) {
  nfserr = nfserrno( nfsd_set_posix_acl(
   fh, ACL_TYPE_ACCESS, argp->acl_access) );
 }
 if (!nfserr) {
  nfserr = nfserrno( nfsd_set_posix_acl(
   fh, ACL_TYPE_DEFAULT, argp->acl_default) );
 }



 posix_acl_release(argp->acl_access);
 posix_acl_release(argp->acl_default);
 RETURN_STATUS(nfserr);
}

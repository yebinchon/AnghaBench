
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* fh_dentry; } ;
typedef TYPE_2__ svc_fh ;
struct svc_rqst {int dummy; } ;
struct posix_acl {int dummy; } ;
struct nfsd3_getaclres {int mask; struct posix_acl* acl_default; struct posix_acl* acl_access; int fh; } ;
struct nfsd3_getaclargs {int mask; int fh; } ;
struct inode {int i_mode; } ;
typedef scalar_t__ __be32 ;
struct TYPE_5__ {struct inode* d_inode; } ;


 int ACL_TYPE_ACCESS ;
 int ACL_TYPE_DEFAULT ;
 int ENODATA ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct posix_acl*) ;
 int NFSD_MAY_NOP ;
 int NFS_ACL ;
 int NFS_ACLCNT ;
 int NFS_DFACL ;
 int NFS_DFACLCNT ;
 int PTR_ERR (struct posix_acl*) ;
 int RETURN_STATUS (scalar_t__) ;
 int SVCFH_fmt (int *) ;
 int dprintk (char*,int ) ;
 TYPE_2__* fh_copy (int *,int *) ;
 scalar_t__ fh_verify (struct svc_rqst*,int *,int ,int ) ;
 struct posix_acl* nfsd_get_posix_acl (TYPE_2__*,int ) ;
 scalar_t__ nfserr_inval ;
 scalar_t__ nfserrno (int) ;
 struct posix_acl* posix_acl_from_mode (int ,int ) ;
 int posix_acl_release (struct posix_acl*) ;

__attribute__((used)) static __be32 nfsacld_proc_getacl(struct svc_rqst * rqstp,
  struct nfsd3_getaclargs *argp, struct nfsd3_getaclres *resp)
{
 svc_fh *fh;
 struct posix_acl *acl;
 __be32 nfserr = 0;

 dprintk("nfsd: GETACL(2acl)   %s\n", SVCFH_fmt(&argp->fh));

 fh = fh_copy(&resp->fh, &argp->fh);
 nfserr = fh_verify(rqstp, &resp->fh, 0, NFSD_MAY_NOP);
 if (nfserr)
  RETURN_STATUS(nfserr);

 if (argp->mask & ~(NFS_ACL|NFS_ACLCNT|NFS_DFACL|NFS_DFACLCNT))
  RETURN_STATUS(nfserr_inval);
 resp->mask = argp->mask;

 if (resp->mask & (NFS_ACL|NFS_ACLCNT)) {
  acl = nfsd_get_posix_acl(fh, ACL_TYPE_ACCESS);
  if (IS_ERR(acl)) {
   int err = PTR_ERR(acl);

   if (err == -ENODATA || err == -EOPNOTSUPP)
    acl = ((void*)0);
   else {
    nfserr = nfserrno(err);
    goto fail;
   }
  }
  if (acl == ((void*)0)) {


   struct inode *inode = fh->fh_dentry->d_inode;
   acl = posix_acl_from_mode(inode->i_mode, GFP_KERNEL);
  }
  resp->acl_access = acl;
 }
 if (resp->mask & (NFS_DFACL|NFS_DFACLCNT)) {



  acl = nfsd_get_posix_acl(fh, ACL_TYPE_DEFAULT);
  if (IS_ERR(acl)) {
   int err = PTR_ERR(acl);

   if (err == -ENODATA || err == -EOPNOTSUPP)
    acl = ((void*)0);
   else {
    nfserr = nfserrno(err);
    goto fail;
   }
  }
  resp->acl_default = acl;
 }


 RETURN_STATUS(0);

fail:
 posix_acl_release(resp->acl_access);
 posix_acl_release(resp->acl_default);
 RETURN_STATUS(nfserr);
}

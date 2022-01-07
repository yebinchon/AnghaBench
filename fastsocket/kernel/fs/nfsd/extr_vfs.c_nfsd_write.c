
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct svc_fh {int fh_dentry; int fh_export; } ;
struct kvec {int dummy; } ;
struct file {int dummy; } ;
typedef int loff_t ;
typedef scalar_t__ __be32 ;


 int NFSD_MAY_OWNER_OVERRIDE ;
 int NFSD_MAY_WRITE ;
 int S_IFREG ;
 int nfsd_close (struct file*) ;
 scalar_t__ nfsd_open (struct svc_rqst*,struct svc_fh*,int ,int,struct file**) ;
 scalar_t__ nfsd_permission (struct svc_rqst*,int ,int ,int) ;
 scalar_t__ nfsd_vfs_write (struct svc_rqst*,struct svc_fh*,struct file*,int ,struct kvec*,int,unsigned long*,int*) ;

__be32
nfsd_write(struct svc_rqst *rqstp, struct svc_fh *fhp, struct file *file,
  loff_t offset, struct kvec *vec, int vlen, unsigned long *cnt,
  int *stablep)
{
 __be32 err = 0;

 if (file) {
  err = nfsd_permission(rqstp, fhp->fh_export, fhp->fh_dentry,
    NFSD_MAY_WRITE|NFSD_MAY_OWNER_OVERRIDE);
  if (err)
   goto out;
  err = nfsd_vfs_write(rqstp, fhp, file, offset, vec, vlen, cnt,
    stablep);
 } else {
  err = nfsd_open(rqstp, fhp, S_IFREG, NFSD_MAY_WRITE, &file);
  if (err)
   goto out;

  if (cnt)
   err = nfsd_vfs_write(rqstp, fhp, file, offset, vec, vlen,
          cnt, stablep);
  nfsd_close(file);
 }
out:
 return err;
}

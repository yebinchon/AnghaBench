
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct svc_rqst {int dummy; } ;
struct svc_fh {TYPE_2__* fh_export; struct dentry* fh_dentry; } ;
struct kstat {int mtime; } ;
struct dentry {scalar_t__ d_inode; } ;
typedef int __be32 ;
struct TYPE_3__ {int mnt; } ;
struct TYPE_4__ {TYPE_1__ ex_path; } ;


 int * encode_fattr3 (struct svc_rqst*,int *,struct svc_fh*,struct kstat*) ;
 int lease_get_mtime (scalar_t__,int *) ;
 int vfs_getattr (int ,struct dentry*,struct kstat*) ;
 int xdr_one ;
 int xdr_zero ;

__attribute__((used)) static __be32 *
encode_post_op_attr(struct svc_rqst *rqstp, __be32 *p, struct svc_fh *fhp)
{
 struct dentry *dentry = fhp->fh_dentry;
 if (dentry && dentry->d_inode) {
         int err;
  struct kstat stat;

  err = vfs_getattr(fhp->fh_export->ex_path.mnt, dentry, &stat);
  if (!err) {
   *p++ = xdr_one;
   lease_get_mtime(dentry->d_inode, &stat.mtime);
   return encode_fattr3(rqstp, p, fhp, &stat);
  }
 }
 *p++ = xdr_zero;
 return p;
}

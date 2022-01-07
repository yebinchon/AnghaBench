
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_rqst {int dummy; } ;
struct TYPE_2__ {int mnt; } ;
struct svc_export {int ex_flags; TYPE_1__ ex_path; } ;
struct inode {int i_mode; int i_uid; int i_gid; } ;
struct dentry {struct inode* d_inode; } ;
typedef int __be32 ;


 int EACCES ;
 scalar_t__ IS_APPEND (struct inode*) ;
 scalar_t__ IS_IMMUTABLE (struct inode*) ;
 int MAY_EXEC ;
 int MAY_READ ;
 int MAY_WRITE ;
 int NFSD_MAY_EXEC ;
 int NFSD_MAY_LOCAL_ACCESS ;
 int NFSD_MAY_LOCK ;
 int NFSD_MAY_NOP ;
 int NFSD_MAY_OWNER_OVERRIDE ;
 int NFSD_MAY_READ ;
 int NFSD_MAY_READ_IF_EXEC ;
 int NFSD_MAY_SATTR ;
 int NFSD_MAY_TRUNC ;
 int NFSD_MAY_WRITE ;
 int NFSEXP_NOAUTHNLM ;
 scalar_t__ S_ISREG (int ) ;
 scalar_t__ __mnt_is_readonly (int ) ;
 int current_fsgid () ;
 int current_fsuid () ;
 int dprintk (char*,int,char*,char*,char*,...) ;
 scalar_t__ exp_rdonly (struct svc_rqst*,struct svc_export*) ;
 int inode_permission (struct inode*,int) ;
 int nfserr_perm ;
 int nfserr_rofs ;
 int nfserrno (int) ;

__be32
nfsd_permission(struct svc_rqst *rqstp, struct svc_export *exp,
     struct dentry *dentry, int acc)
{
 struct inode *inode = dentry->d_inode;
 int err;

 if (acc == NFSD_MAY_NOP)
  return 0;
 if (!(acc & NFSD_MAY_LOCAL_ACCESS))
  if (acc & (NFSD_MAY_WRITE | NFSD_MAY_SATTR | NFSD_MAY_TRUNC)) {
   if (exp_rdonly(rqstp, exp) ||
       __mnt_is_readonly(exp->ex_path.mnt))
    return nfserr_rofs;
   if ( IS_IMMUTABLE(inode))
    return nfserr_perm;
  }
 if ((acc & NFSD_MAY_TRUNC) && IS_APPEND(inode))
  return nfserr_perm;

 if (acc & NFSD_MAY_LOCK) {




  if (exp->ex_flags & NFSEXP_NOAUTHNLM)
   return 0;
  else
   acc = NFSD_MAY_READ | NFSD_MAY_OWNER_OVERRIDE;
 }
 if ((acc & NFSD_MAY_OWNER_OVERRIDE) &&
     inode->i_uid == current_fsuid())
  return 0;


 err = inode_permission(inode, acc & (MAY_READ|MAY_WRITE|MAY_EXEC));


 if (err == -EACCES && S_ISREG(inode->i_mode) &&
      (acc == (NFSD_MAY_READ | NFSD_MAY_OWNER_OVERRIDE) ||
       acc == (NFSD_MAY_READ | NFSD_MAY_READ_IF_EXEC)))
  err = inode_permission(inode, MAY_EXEC);

 return err? nfserrno(err) : 0;
}

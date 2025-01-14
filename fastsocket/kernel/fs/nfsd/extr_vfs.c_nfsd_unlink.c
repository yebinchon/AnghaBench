
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_rqst {int dummy; } ;
struct svc_fh {TYPE_1__* fh_export; struct dentry* fh_dentry; } ;
struct inode {int i_mode; } ;
struct dentry {int d_count; struct inode* d_inode; } ;
typedef scalar_t__ __be32 ;
struct TYPE_2__ {int ex_flags; } ;


 int EPERM ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int I_MUTEX_PARENT ;
 int NFSD_MAY_REMOVE ;
 int NFSEXP_MSNFS ;
 int PTR_ERR (struct dentry*) ;
 int S_IFDIR ;
 int S_IFMT ;
 int atomic_read (int *) ;
 int commit_metadata (struct svc_fh*) ;
 int dput (struct dentry*) ;
 int fh_lock_nested (struct svc_fh*,int ) ;
 scalar_t__ fh_verify (struct svc_rqst*,struct svc_fh*,int,int ) ;
 int fh_want_write (struct svc_fh*) ;
 scalar_t__ isdotent (char*,int) ;
 struct dentry* lookup_one_len (char*,struct dentry*,int) ;
 int nfsd_break_lease (struct inode*) ;
 scalar_t__ nfserr_acces ;
 scalar_t__ nfserr_noent ;
 scalar_t__ nfserrno (int) ;
 int vfs_rmdir (struct inode*,struct dentry*) ;
 int vfs_unlink (struct inode*,struct dentry*) ;

__be32
nfsd_unlink(struct svc_rqst *rqstp, struct svc_fh *fhp, int type,
    char *fname, int flen)
{
 struct dentry *dentry, *rdentry;
 struct inode *dirp;
 __be32 err;
 int host_err;

 err = nfserr_acces;
 if (!flen || isdotent(fname, flen))
  goto out;
 err = fh_verify(rqstp, fhp, S_IFDIR, NFSD_MAY_REMOVE);
 if (err)
  goto out;

 host_err = fh_want_write(fhp);
 if (host_err)
  goto out_nfserr;

 fh_lock_nested(fhp, I_MUTEX_PARENT);
 dentry = fhp->fh_dentry;
 dirp = dentry->d_inode;

 rdentry = lookup_one_len(fname, dentry, flen);
 host_err = PTR_ERR(rdentry);
 if (IS_ERR(rdentry))
  goto out_nfserr;

 if (!rdentry->d_inode) {
  dput(rdentry);
  err = nfserr_noent;
  goto out;
 }

 if (!type)
  type = rdentry->d_inode->i_mode & S_IFMT;

 host_err = nfsd_break_lease(rdentry->d_inode);
 if (host_err)
  goto out_put;
 if (type != S_IFDIR) {






  host_err = vfs_unlink(dirp, rdentry);
 } else {
  host_err = vfs_rmdir(dirp, rdentry);
 }

 if (!host_err)
  host_err = commit_metadata(fhp);
out_put:
 dput(rdentry);

out_nfserr:
 err = nfserrno(host_err);
out:
 return err;
}

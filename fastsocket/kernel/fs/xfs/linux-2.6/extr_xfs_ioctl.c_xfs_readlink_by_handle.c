
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ohandle; int ohandlen; } ;
typedef TYPE_1__ xfs_fsop_handlereq_t ;
struct file {int dummy; } ;
struct dentry {TYPE_4__* d_inode; } ;
typedef int __u32 ;
struct TYPE_6__ {int i_mode; } ;


 int CAP_SYS_ADMIN ;
 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 int EPERM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct dentry*) ;
 scalar_t__ MAXPATHLEN ;
 int PTR_ERR (struct dentry*) ;
 int S_ISLNK (int ) ;
 int XFS_ERROR (int ) ;
 int XFS_I (TYPE_4__*) ;
 int capable (int ) ;
 scalar_t__ copy_from_user (int *,int ,int) ;
 int do_readlink (int ,int ,void*) ;
 int dput (struct dentry*) ;
 int kfree (void*) ;
 void* kmalloc (scalar_t__,int ) ;
 struct dentry* xfs_handlereq_to_dentry (struct file*,TYPE_1__*) ;
 int xfs_readlink (int ,void*) ;

int
xfs_readlink_by_handle(
 struct file *parfilp,
 xfs_fsop_handlereq_t *hreq)
{
 struct dentry *dentry;
 __u32 olen;
 void *link;
 int error;

 if (!capable(CAP_SYS_ADMIN))
  return -XFS_ERROR(EPERM);

 dentry = xfs_handlereq_to_dentry(parfilp, hreq);
 if (IS_ERR(dentry))
  return PTR_ERR(dentry);


 if (!S_ISLNK(dentry->d_inode->i_mode)) {
  error = -XFS_ERROR(EINVAL);
  goto out_dput;
 }

 if (copy_from_user(&olen, hreq->ohandlen, sizeof(__u32))) {
  error = -XFS_ERROR(EFAULT);
  goto out_dput;
 }

 link = kmalloc(MAXPATHLEN+1, GFP_KERNEL);
 if (!link) {
  error = -XFS_ERROR(ENOMEM);
  goto out_dput;
 }

 error = -xfs_readlink(XFS_I(dentry->d_inode), link);
 if (error)
  goto out_kfree;
 error = do_readlink(hreq->ohandle, olen, link);
 if (error)
  goto out_kfree;

 out_kfree:
 kfree(link);
 out_dput:
 dput(dentry);
 return error;
}

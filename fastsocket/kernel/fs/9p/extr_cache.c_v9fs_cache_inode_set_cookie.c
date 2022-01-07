
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v9fs_cookie {int lock; int fscache; } ;
struct p9_fid {int dummy; } ;
struct inode {int dummy; } ;
struct file {int f_flags; struct p9_fid* private_data; } ;


 int O_ACCMODE ;
 int O_RDONLY ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int v9fs_cache_inode_flush_cookie (struct inode*) ;
 int v9fs_cache_inode_get_cookie (struct inode*) ;
 struct v9fs_cookie* v9fs_inode2cookie (struct inode*) ;

void v9fs_cache_inode_set_cookie(struct inode *inode, struct file *filp)
{
 struct v9fs_cookie *vcookie = v9fs_inode2cookie(inode);
 struct p9_fid *fid;

 if (!vcookie->fscache)
  return;

 spin_lock(&vcookie->lock);
 fid = filp->private_data;
 if ((filp->f_flags & O_ACCMODE) != O_RDONLY)
  v9fs_cache_inode_flush_cookie(inode);
 else
  v9fs_cache_inode_get_cookie(inode);

 spin_unlock(&vcookie->lock);
}

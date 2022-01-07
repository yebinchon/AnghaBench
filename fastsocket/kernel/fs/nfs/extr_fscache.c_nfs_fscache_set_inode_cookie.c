
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int f_flags; } ;


 scalar_t__ NFS_FSCACHE (struct inode*) ;
 int O_ACCMODE ;
 int O_RDONLY ;
 int nfs_fscache_disable_inode_cookie (struct inode*) ;
 int nfs_fscache_enable_inode_cookie (struct inode*) ;
 int nfs_fscache_inode_lock (struct inode*) ;
 int nfs_fscache_inode_unlock (struct inode*) ;

void nfs_fscache_set_inode_cookie(struct inode *inode, struct file *filp)
{
 if (NFS_FSCACHE(inode)) {
  nfs_fscache_inode_lock(inode);
  if ((filp->f_flags & O_ACCMODE) != O_RDONLY)
   nfs_fscache_disable_inode_cookie(inode);
  else
   nfs_fscache_enable_inode_cookie(inode);
  nfs_fscache_inode_unlock(inode);
 }
}

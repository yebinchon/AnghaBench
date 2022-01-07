
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct kstat {int blocks; } ;
struct dentry {int d_inode; } ;


 int ecryptfs_dentry_to_lower (struct dentry*) ;
 int ecryptfs_dentry_to_lower_mnt (struct dentry*) ;
 int generic_fillattr (int ,struct kstat*) ;
 int vfs_getattr (int ,int ,struct kstat*) ;

int ecryptfs_getattr(struct vfsmount *mnt, struct dentry *dentry,
       struct kstat *stat)
{
 struct kstat lower_stat;
 int rc;

 rc = vfs_getattr(ecryptfs_dentry_to_lower_mnt(dentry),
    ecryptfs_dentry_to_lower(dentry), &lower_stat);
 if (!rc) {
  generic_fillattr(dentry->d_inode, stat);
  stat->blocks = lower_stat.blocks;
 }
 return rc;
}

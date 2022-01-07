
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct TYPE_2__ {struct vfsmount* mnt; struct dentry* dentry; } ;
struct nameidata {TYPE_1__ path; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 struct dentry* ecryptfs_dentry_to_lower (struct dentry*) ;
 struct vfsmount* ecryptfs_dentry_to_lower_mnt (struct dentry*) ;
 int vfs_create (struct inode*,struct dentry*,int,struct nameidata*) ;

__attribute__((used)) static int
ecryptfs_create_underlying_file(struct inode *lower_dir_inode,
    struct dentry *dentry, int mode,
    struct nameidata *nd)
{
 struct dentry *lower_dentry = ecryptfs_dentry_to_lower(dentry);
 struct vfsmount *lower_mnt = ecryptfs_dentry_to_lower_mnt(dentry);
 struct dentry *dentry_save;
 struct vfsmount *vfsmount_save;
 int rc;

 dentry_save = nd->path.dentry;
 vfsmount_save = nd->path.mnt;
 nd->path.dentry = lower_dentry;
 nd->path.mnt = lower_mnt;
 rc = vfs_create(lower_dir_inode, lower_dentry, mode, nd);
 nd->path.dentry = dentry_save;
 nd->path.mnt = vfsmount_save;
 return rc;
}

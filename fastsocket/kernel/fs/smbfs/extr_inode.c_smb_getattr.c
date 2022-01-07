
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct kstat {int dummy; } ;
struct dentry {int d_inode; } ;


 int generic_fillattr (int ,struct kstat*) ;
 int smb_revalidate_inode (struct dentry*) ;

int smb_getattr(struct vfsmount *mnt, struct dentry *dentry, struct kstat *stat)
{
 int err = smb_revalidate_inode(dentry);
 if (!err)
  generic_fillattr(dentry->d_inode, stat);
 return err;
}

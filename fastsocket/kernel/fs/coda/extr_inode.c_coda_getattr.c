
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct kstat {int dummy; } ;
struct dentry {int d_inode; } ;


 int coda_revalidate_inode (struct dentry*) ;
 int generic_fillattr (int ,struct kstat*) ;

int coda_getattr(struct vfsmount *mnt, struct dentry *dentry, struct kstat *stat)
{
 int err = coda_revalidate_inode(dentry);
 if (!err)
  generic_fillattr(dentry->d_inode, stat);
 return err;
}

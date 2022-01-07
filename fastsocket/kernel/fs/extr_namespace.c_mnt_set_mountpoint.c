
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int mnt_mountpoint; int mnt_parent; } ;
struct dentry {int d_mounted; } ;


 int dget (struct dentry*) ;
 int mntget (struct vfsmount*) ;

void mnt_set_mountpoint(struct vfsmount *mnt, struct dentry *dentry,
   struct vfsmount *child_mnt)
{
 child_mnt->mnt_parent = mntget(mnt);
 child_mnt->mnt_mountpoint = dget(dentry);
 dentry->d_mounted++;
}

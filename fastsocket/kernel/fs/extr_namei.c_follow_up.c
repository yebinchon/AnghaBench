
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int mnt_mountpoint; struct vfsmount* mnt_parent; } ;
struct path {struct vfsmount* mnt; struct dentry* dentry; } ;
struct dentry {int dummy; } ;


 struct dentry* dget (int ) ;
 int dput (struct dentry*) ;
 int mntget (struct vfsmount*) ;
 int mntput (struct vfsmount*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vfsmount_lock ;

int follow_up(struct path *path)
{
 struct vfsmount *parent;
 struct dentry *mountpoint;
 spin_lock(&vfsmount_lock);
 parent = path->mnt->mnt_parent;
 if (parent == path->mnt) {
  spin_unlock(&vfsmount_lock);
  return 0;
 }
 mntget(parent);
 mountpoint = dget(path->mnt->mnt_mountpoint);
 spin_unlock(&vfsmount_lock);
 dput(path->dentry);
 path->dentry = mountpoint;
 mntput(path->mnt);
 path->mnt = parent;
 return 1;
}

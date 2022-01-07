
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct path {int dentry; int mnt; } ;


 struct vfsmount* __lookup_mnt (int ,int ,int) ;
 int mntget (struct vfsmount*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vfsmount_lock ;

struct vfsmount *lookup_mnt(struct path *path)
{
 struct vfsmount *child_mnt;
 spin_lock(&vfsmount_lock);
 if ((child_mnt = __lookup_mnt(path->mnt, path->dentry, 1)))
  mntget(child_mnt);
 spin_unlock(&vfsmount_lock);
 return child_mnt;
}

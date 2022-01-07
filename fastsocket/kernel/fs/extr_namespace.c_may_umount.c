
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;


 scalar_t__ propagate_mount_busy (struct vfsmount*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vfsmount_lock ;

int may_umount(struct vfsmount *mnt)
{
 int ret = 1;
 spin_lock(&vfsmount_lock);
 if (propagate_mount_busy(mnt, 2))
  ret = 0;
 spin_unlock(&vfsmount_lock);
 return ret;
}

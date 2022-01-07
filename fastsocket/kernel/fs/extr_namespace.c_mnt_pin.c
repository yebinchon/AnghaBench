
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int mnt_pinned; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vfsmount_lock ;

void mnt_pin(struct vfsmount *mnt)
{
 spin_lock(&vfsmount_lock);
 mnt->mnt_pinned++;
 spin_unlock(&vfsmount_lock);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {scalar_t__ mnt_pinned; int mnt_count; } ;


 int atomic_inc (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vfsmount_lock ;

void mnt_unpin(struct vfsmount *mnt)
{
 spin_lock(&vfsmount_lock);
 if (mnt->mnt_pinned) {
  atomic_inc(&mnt->mnt_count);
  mnt->mnt_pinned--;
 }
 spin_unlock(&vfsmount_lock);
}

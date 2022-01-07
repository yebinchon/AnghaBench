
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {scalar_t__ mnt_pinned; int mnt_count; } ;


 int __mntput (struct vfsmount*) ;
 int acct_auto_close_mnt (struct vfsmount*) ;
 int atomic_add (scalar_t__,int *) ;
 scalar_t__ atomic_dec_and_lock (int *,int *) ;
 scalar_t__ likely (int) ;
 int security_sb_umount_close (struct vfsmount*) ;
 int spin_unlock (int *) ;
 int vfsmount_lock ;

void mntput_no_expire(struct vfsmount *mnt)
{
repeat:
 if (atomic_dec_and_lock(&mnt->mnt_count, &vfsmount_lock)) {
  if (likely(!mnt->mnt_pinned)) {
   spin_unlock(&vfsmount_lock);
   __mntput(mnt);
   return;
  }
  atomic_add(mnt->mnt_pinned + 1, &mnt->mnt_count);
  mnt->mnt_pinned = 0;
  spin_unlock(&vfsmount_lock);
  acct_auto_close_mnt(mnt);
  security_sb_umount_close(mnt);
  goto repeat;
 }
}

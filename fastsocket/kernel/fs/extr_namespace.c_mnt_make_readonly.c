
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int mnt_flags; } ;


 int EBUSY ;
 int MNT_READONLY ;
 int MNT_WRITE_HOLD ;
 scalar_t__ count_mnt_writers (struct vfsmount*) ;
 int smp_mb () ;
 int smp_wmb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vfsmount_lock ;

__attribute__((used)) static int mnt_make_readonly(struct vfsmount *mnt)
{
 int ret = 0;

 spin_lock(&vfsmount_lock);
 mnt->mnt_flags |= MNT_WRITE_HOLD;




 smp_mb();
 if (count_mnt_writers(mnt) > 0)
  ret = -EBUSY;
 else
  mnt->mnt_flags |= MNT_READONLY;




 smp_wmb();
 mnt->mnt_flags &= ~MNT_WRITE_HOLD;
 spin_unlock(&vfsmount_lock);
 return ret;
}

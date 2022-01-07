
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int mnt_flags; } ;


 int EROFS ;
 int MNT_WRITE_HOLD ;
 scalar_t__ __mnt_is_readonly (struct vfsmount*) ;
 int cpu_relax () ;
 int dec_mnt_writers (struct vfsmount*) ;
 int inc_mnt_writers (struct vfsmount*) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int smp_mb () ;
 int smp_rmb () ;

int __mnt_want_write(struct vfsmount *mnt)
{
 int ret = 0;

 preempt_disable();
 inc_mnt_writers(mnt);





 smp_mb();
 while (mnt->mnt_flags & MNT_WRITE_HOLD)
  cpu_relax();





 smp_rmb();
 if (__mnt_is_readonly(mnt)) {
  dec_mnt_writers(mnt);
  ret = -EROFS;
  goto out;
 }
out:
 preempt_enable();

 return ret;
}

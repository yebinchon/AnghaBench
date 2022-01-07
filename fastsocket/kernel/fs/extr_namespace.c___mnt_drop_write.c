
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;


 int dec_mnt_writers (struct vfsmount*) ;
 int preempt_disable () ;
 int preempt_enable () ;

void __mnt_drop_write(struct vfsmount *mnt)
{
 preempt_disable();
 dec_mnt_writers(mnt);
 preempt_enable();
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sysfs_open_dirent {int poll; int event; } ;
struct TYPE_2__ {struct sysfs_open_dirent* open; } ;
struct sysfs_dirent {TYPE_1__ s_attr; } ;


 int atomic_inc (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sysfs_open_dirent_lock ;
 int wake_up_interruptible (int *) ;

void sysfs_notify_dirent(struct sysfs_dirent *sd)
{
 struct sysfs_open_dirent *od;
 unsigned long flags;

 spin_lock_irqsave(&sysfs_open_dirent_lock, flags);

 od = sd->s_attr.open;
 if (od) {
  atomic_inc(&od->event);
  wake_up_interruptible(&od->poll);
 }

 spin_unlock_irqrestore(&sysfs_open_dirent_lock, flags);
}

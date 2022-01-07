
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sysfs_open_dirent {int refcnt; } ;
struct TYPE_2__ {struct sysfs_open_dirent* open; } ;
struct sysfs_dirent {TYPE_1__ s_attr; } ;
struct sysfs_buffer {int list; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int kfree (struct sysfs_open_dirent*) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sysfs_open_dirent_lock ;

__attribute__((used)) static void sysfs_put_open_dirent(struct sysfs_dirent *sd,
      struct sysfs_buffer *buffer)
{
 struct sysfs_open_dirent *od = sd->s_attr.open;
 unsigned long flags;

 spin_lock_irqsave(&sysfs_open_dirent_lock, flags);

 list_del(&buffer->list);
 if (atomic_dec_and_test(&od->refcnt))
  sd->s_attr.open = ((void*)0);
 else
  od = ((void*)0);

 spin_unlock_irqrestore(&sysfs_open_dirent_lock, flags);

 kfree(od);
}

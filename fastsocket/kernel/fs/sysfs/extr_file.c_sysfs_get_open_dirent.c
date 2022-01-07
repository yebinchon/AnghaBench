
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sysfs_open_dirent {int buffers; int poll; int event; int refcnt; } ;
struct TYPE_2__ {struct sysfs_open_dirent* open; } ;
struct sysfs_dirent {TYPE_1__ s_attr; } ;
struct sysfs_buffer {int list; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct sysfs_open_dirent*) ;
 struct sysfs_open_dirent* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int sysfs_open_dirent_lock ;

__attribute__((used)) static int sysfs_get_open_dirent(struct sysfs_dirent *sd,
     struct sysfs_buffer *buffer)
{
 struct sysfs_open_dirent *od, *new_od = ((void*)0);

 retry:
 spin_lock_irq(&sysfs_open_dirent_lock);

 if (!sd->s_attr.open && new_od) {
  sd->s_attr.open = new_od;
  new_od = ((void*)0);
 }

 od = sd->s_attr.open;
 if (od) {
  atomic_inc(&od->refcnt);
  list_add_tail(&buffer->list, &od->buffers);
 }

 spin_unlock_irq(&sysfs_open_dirent_lock);

 if (od) {
  kfree(new_od);
  return 0;
 }


 new_od = kmalloc(sizeof(*new_od), GFP_KERNEL);
 if (!new_od)
  return -ENOMEM;

 atomic_set(&new_od->refcnt, 0);
 atomic_set(&new_od->event, 1);
 init_waitqueue_head(&new_od->poll);
 INIT_LIST_HEAD(&new_od->buffers);
 goto retry;
}

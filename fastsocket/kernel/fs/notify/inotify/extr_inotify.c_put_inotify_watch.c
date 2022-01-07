
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inotify_watch {int inode; struct inotify_handle* ih; int count; } ;
struct inotify_handle {TYPE_1__* in_ops; } ;
struct TYPE_2__ {int (* destroy_watch ) (struct inotify_watch*) ;} ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int iput (int ) ;
 int put_inotify_handle (struct inotify_handle*) ;
 int stub1 (struct inotify_watch*) ;

void put_inotify_watch(struct inotify_watch *watch)
{
 if (atomic_dec_and_test(&watch->count)) {
  struct inotify_handle *ih = watch->ih;

  iput(watch->inode);
  ih->in_ops->destroy_watch(watch);
  put_inotify_handle(ih);
 }
}

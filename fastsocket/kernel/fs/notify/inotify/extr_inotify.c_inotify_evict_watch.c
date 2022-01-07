
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inotify_watch {TYPE_1__* ih; } ;
struct TYPE_2__ {int mutex; } ;


 int get_inotify_watch (struct inotify_watch*) ;
 int inotify_remove_watch_locked (TYPE_1__*,struct inotify_watch*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void inotify_evict_watch(struct inotify_watch *watch)
{
 get_inotify_watch(watch);
 mutex_lock(&watch->ih->mutex);
 inotify_remove_watch_locked(watch->ih, watch);
 mutex_unlock(&watch->ih->mutex);
}

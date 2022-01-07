
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct inotify_watch {int wd; TYPE_1__* inode; int i_list; int h_list; struct inotify_handle* ih; int mask; } ;
struct inotify_handle {int mutex; int watches; } ;
typedef int s32 ;
struct TYPE_3__ {int inotify_watches; } ;


 int get_inotify_handle (struct inotify_handle*) ;
 TYPE_1__* igrab (TYPE_1__*) ;
 int inotify_handle_get_wd (struct inotify_handle*,struct inotify_watch*) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ unlikely (int) ;

s32 inotify_clone_watch(struct inotify_watch *old, struct inotify_watch *new)
{
 struct inotify_handle *ih = old->ih;
 int ret = 0;

 new->mask = old->mask;
 new->ih = ih;

 mutex_lock(&ih->mutex);


 ret = inotify_handle_get_wd(ih, new);
 if (unlikely(ret))
  goto out;
 ret = new->wd;

 get_inotify_handle(ih);

 new->inode = igrab(old->inode);

 list_add(&new->h_list, &ih->watches);
 list_add(&new->i_list, &old->inode->inotify_watches);
out:
 mutex_unlock(&ih->mutex);
 return ret;
}

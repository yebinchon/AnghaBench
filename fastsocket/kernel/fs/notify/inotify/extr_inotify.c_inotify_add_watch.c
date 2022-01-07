
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct inotify_watch {int mask; int wd; int i_list; int h_list; int inode; struct inotify_handle* ih; } ;
struct inotify_handle {int mutex; int watches; } ;
struct inode {int inotify_mutex; int inotify_watches; } ;
typedef int s32 ;


 int EINVAL ;
 int IN_ALL_EVENTS ;
 int IN_ONESHOT ;
 int get_inotify_handle (struct inotify_handle*) ;
 int igrab (struct inode*) ;
 int inotify_handle_get_wd (struct inotify_handle*,struct inotify_watch*) ;
 int inotify_inode_watched (struct inode*) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_dentry_child_flags (struct inode*,int) ;
 scalar_t__ unlikely (int) ;

s32 inotify_add_watch(struct inotify_handle *ih, struct inotify_watch *watch,
        struct inode *inode, u32 mask)
{
 int ret = 0;
 int newly_watched;


 mask &= IN_ALL_EVENTS | IN_ONESHOT;
 if (unlikely(!mask))
  return -EINVAL;
 watch->mask = mask;

 mutex_lock(&inode->inotify_mutex);
 mutex_lock(&ih->mutex);


 ret = inotify_handle_get_wd(ih, watch);
 if (unlikely(ret))
  goto out;
 ret = watch->wd;


 get_inotify_handle(ih);
 watch->ih = ih;





 watch->inode = igrab(inode);


 newly_watched = !inotify_inode_watched(inode);
 list_add(&watch->h_list, &ih->watches);
 list_add(&watch->i_list, &inode->inotify_watches);





 if (newly_watched)
  set_dentry_child_flags(inode, 1);

out:
 mutex_unlock(&ih->mutex);
 mutex_unlock(&inode->inotify_mutex);
 return ret;
}

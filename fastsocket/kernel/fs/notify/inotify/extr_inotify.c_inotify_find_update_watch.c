
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct inotify_watch {int mask; int wd; } ;
struct inotify_handle {int mutex; } ;
struct inode {int inotify_mutex; } ;
typedef int s32 ;


 int EINVAL ;
 int ENOENT ;
 int IN_ALL_EVENTS ;
 int IN_MASK_ADD ;
 int IN_ONESHOT ;
 struct inotify_watch* inode_find_handle (struct inode*,struct inotify_handle*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ unlikely (int) ;

s32 inotify_find_update_watch(struct inotify_handle *ih, struct inode *inode,
         u32 mask)
{
 struct inotify_watch *old;
 int mask_add = 0;
 int ret;

 if (mask & IN_MASK_ADD)
  mask_add = 1;


 mask &= IN_ALL_EVENTS | IN_ONESHOT;
 if (unlikely(!mask))
  return -EINVAL;

 mutex_lock(&inode->inotify_mutex);
 mutex_lock(&ih->mutex);





 old = inode_find_handle(inode, ih);
 if (unlikely(!old)) {
  ret = -ENOENT;
  goto out;
 }

 if (mask_add)
  old->mask |= mask;
 else
  old->mask = mask;
 ret = old->wd;
out:
 mutex_unlock(&ih->mutex);
 mutex_unlock(&inode->inotify_mutex);
 return ret;
}

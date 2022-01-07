
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct super_block {int dummy; } ;
struct inotify_watch {struct inode* inode; } ;
struct inotify_handle {int mutex; int idr; } ;
struct inode {int inotify_mutex; struct super_block* i_sb; } ;


 int EINVAL ;
 struct inotify_watch* idr_find (int *,int ) ;
 int inotify_remove_watch_locked (struct inotify_handle*,struct inotify_watch*) ;
 scalar_t__ likely (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pin_to_kill (struct inotify_handle*,struct inotify_watch*) ;
 scalar_t__ unlikely (int) ;
 int unpin_and_kill (struct inotify_watch*,int) ;

int inotify_rm_wd(struct inotify_handle *ih, u32 wd)
{
 struct inotify_watch *watch;
 struct super_block *sb;
 struct inode *inode;
 int how;

 mutex_lock(&ih->mutex);
 watch = idr_find(&ih->idr, wd);
 if (unlikely(!watch)) {
  mutex_unlock(&ih->mutex);
  return -EINVAL;
 }
 sb = watch->inode->i_sb;
 how = pin_to_kill(ih, watch);
 if (!how)
  return 0;

 inode = watch->inode;

 mutex_lock(&inode->inotify_mutex);
 mutex_lock(&ih->mutex);


 if (likely(idr_find(&ih->idr, wd) == watch))
  inotify_remove_watch_locked(ih, watch);

 mutex_unlock(&ih->mutex);
 mutex_unlock(&inode->inotify_mutex);
 unpin_and_kill(watch, how);

 return 0;
}

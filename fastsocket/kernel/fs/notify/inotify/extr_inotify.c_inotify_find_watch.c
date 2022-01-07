
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inotify_watch {int wd; } ;
struct inotify_handle {int mutex; } ;
struct inode {int inotify_mutex; } ;
typedef int s32 ;


 int ENOENT ;
 int get_inotify_watch (struct inotify_watch*) ;
 struct inotify_watch* inode_find_handle (struct inode*,struct inotify_handle*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ unlikely (struct inotify_watch*) ;

s32 inotify_find_watch(struct inotify_handle *ih, struct inode *inode,
         struct inotify_watch **watchp)
{
 struct inotify_watch *old;
 int ret = -ENOENT;

 mutex_lock(&inode->inotify_mutex);
 mutex_lock(&ih->mutex);

 old = inode_find_handle(inode, ih);
 if (unlikely(old)) {
  get_inotify_watch(old);
  *watchp = old;
  ret = old->wd;
 }

 mutex_unlock(&ih->mutex);
 mutex_unlock(&inode->inotify_mutex);

 return ret;
}

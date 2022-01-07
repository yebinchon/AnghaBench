
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_root; int s_umount; int s_count; int s_active; } ;
struct inotify_watch {TYPE_1__* inode; int wd; } ;
struct inotify_handle {int mutex; int idr; } ;
typedef int s32 ;
struct TYPE_2__ {struct super_block* i_sb; } ;


 scalar_t__ atomic_inc_not_zero (int *) ;
 int down_read (int *) ;
 int drop_super (struct super_block*) ;
 int get_inotify_watch (struct inotify_watch*) ;
 struct inotify_watch* idr_find (int *,int ) ;
 scalar_t__ likely (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sb_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int pin_to_kill(struct inotify_handle *ih, struct inotify_watch *watch)
{
 struct super_block *sb = watch->inode->i_sb;
 s32 wd = watch->wd;

 if (atomic_inc_not_zero(&sb->s_active)) {
  get_inotify_watch(watch);
  mutex_unlock(&ih->mutex);
  return 1;
 }
 spin_lock(&sb_lock);
 sb->s_count++;
 spin_unlock(&sb_lock);
 mutex_unlock(&ih->mutex);
 down_read(&sb->s_umount);
 if (likely(!sb->s_root)) {

  drop_super(sb);
  return 0;
 }

 mutex_lock(&ih->mutex);
 if (idr_find(&ih->idr, wd) != watch || watch->inode->i_sb != sb) {

  mutex_unlock(&ih->mutex);
  drop_super(sb);
  return 0;
 }

 get_inotify_watch(watch);
 mutex_unlock(&ih->mutex);
 return 2;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_active; } ;
struct inotify_watch {int count; TYPE_1__* inode; } ;
struct TYPE_2__ {struct super_block* i_sb; } ;


 int atomic_inc (int *) ;
 scalar_t__ atomic_inc_not_zero (int *) ;

int pin_inotify_watch(struct inotify_watch *watch)
{
 struct super_block *sb = watch->inode->i_sb;
 if (atomic_inc_not_zero(&sb->s_active)) {
  atomic_inc(&watch->count);
  return 1;
 }
 return 0;
}

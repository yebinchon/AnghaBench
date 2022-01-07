
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inotify_watch {TYPE_1__* inode; } ;
struct TYPE_2__ {struct super_block* i_sb; } ;


 int deactivate_super (struct super_block*) ;
 int drop_super (struct super_block*) ;
 int put_inotify_watch (struct inotify_watch*) ;

__attribute__((used)) static void unpin_and_kill(struct inotify_watch *watch, int how)
{
 struct super_block *sb = watch->inode->i_sb;
 put_inotify_watch(watch);
 switch (how) {
 case 1:
  deactivate_super(sb);
  break;
 case 2:
  drop_super(sb);
 }
}

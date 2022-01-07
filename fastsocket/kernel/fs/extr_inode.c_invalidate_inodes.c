
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_inodes; } ;


 int LIST_HEAD (int ) ;
 int dispose_list (int *) ;
 int down_write (int *) ;
 int fsnotify_unmount_inodes (int *) ;
 int inode_lock ;
 int inotify_unmount_inodes (int *) ;
 int invalidate_list (int *,int *,int) ;
 int iprune_sem ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int throw_away ;
 int up_write (int *) ;

int invalidate_inodes(struct super_block *sb, bool kill_dirty)
{
 int busy;
 LIST_HEAD(throw_away);

 down_write(&iprune_sem);
 spin_lock(&inode_lock);
 inotify_unmount_inodes(&sb->s_inodes);
 fsnotify_unmount_inodes(&sb->s_inodes);
 busy = invalidate_list(&sb->s_inodes, &throw_away, kill_dirty);
 spin_unlock(&inode_lock);

 dispose_list(&throw_away);
 up_write(&iprune_sem);

 return busy;
}

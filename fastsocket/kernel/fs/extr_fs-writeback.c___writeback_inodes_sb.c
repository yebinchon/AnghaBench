
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {int older_than_this; int for_kupdate; } ;
struct super_block {int s_umount; } ;
struct bdi_writeback {int b_io; } ;


 int WARN_ON (int) ;
 int inode_lock ;
 scalar_t__ list_empty (int *) ;
 int queue_io (struct bdi_writeback*,int ) ;
 int rwsem_is_locked (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writeback_sb_inodes (struct super_block*,struct bdi_writeback*,struct writeback_control*,int) ;

__attribute__((used)) static void __writeback_inodes_sb(struct super_block *sb,
  struct bdi_writeback *wb, struct writeback_control *wbc)
{
 WARN_ON(!rwsem_is_locked(&sb->s_umount));

 spin_lock(&inode_lock);
 if (!wbc->for_kupdate || list_empty(&wb->b_io))
  queue_io(wb, wbc->older_than_this);
 writeback_sb_inodes(sb, wb, wbc, 1);
 spin_unlock(&inode_lock);
}

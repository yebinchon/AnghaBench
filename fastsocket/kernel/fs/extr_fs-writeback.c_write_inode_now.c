
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {scalar_t__ nr_to_write; int range_end; int range_start; int sync_mode; } ;
struct inode {int i_mapping; } ;


 int LLONG_MAX ;
 scalar_t__ LONG_MAX ;
 int WB_SYNC_ALL ;
 int WB_SYNC_NONE ;
 int inode_lock ;
 int inode_sync_wait (struct inode*) ;
 int mapping_cap_writeback_dirty (int ) ;
 int might_sleep () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writeback_single_inode (struct inode*,struct writeback_control*) ;

int write_inode_now(struct inode *inode, int sync)
{
 int ret;
 struct writeback_control wbc = {
  .nr_to_write = LONG_MAX,
  .sync_mode = sync ? WB_SYNC_ALL : WB_SYNC_NONE,
  .range_start = 0,
  .range_end = LLONG_MAX,
 };

 if (!mapping_cap_writeback_dirty(inode->i_mapping))
  wbc.nr_to_write = 0;

 might_sleep();
 spin_lock(&inode_lock);
 ret = writeback_single_inode(inode, &wbc);
 spin_unlock(&inode_lock);
 if (sync)
  inode_sync_wait(inode);
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {int range_end; int range_start; int nr_to_write; int sync_mode; } ;
struct inode {int dummy; } ;


 int LLONG_MAX ;
 int LONG_MAX ;
 int WB_SYNC_ALL ;
 int sync_inode (struct inode*,struct writeback_control*) ;

int nfs_wb_all(struct inode *inode)
{
 struct writeback_control wbc = {
  .sync_mode = WB_SYNC_ALL,
  .nr_to_write = LONG_MAX,
  .range_start = 0,
  .range_end = LLONG_MAX,
 };

 return sync_inode(inode, &wbc);
}

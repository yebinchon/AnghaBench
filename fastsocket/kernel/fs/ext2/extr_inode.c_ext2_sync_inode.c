
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {int nr_to_write; int sync_mode; } ;
struct inode {int dummy; } ;


 int WB_SYNC_ALL ;
 int sync_inode (struct inode*,struct writeback_control*) ;

int ext2_sync_inode(struct inode *inode)
{
 struct writeback_control wbc = {
  .sync_mode = WB_SYNC_ALL,
  .nr_to_write = 0,
 };
 return sync_inode(inode, &wbc);
}

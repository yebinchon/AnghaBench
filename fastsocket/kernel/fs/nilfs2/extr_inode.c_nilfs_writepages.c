
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {scalar_t__ sync_mode; int range_end; int range_start; } ;
struct inode {int i_sb; } ;
struct address_space {struct inode* host; } ;


 scalar_t__ WB_SYNC_ALL ;
 int nilfs_construct_dsync_segment (int ,struct inode*,int ,int ) ;

__attribute__((used)) static int nilfs_writepages(struct address_space *mapping,
       struct writeback_control *wbc)
{
 struct inode *inode = mapping->host;
 int err = 0;

 if (wbc->sync_mode == WB_SYNC_ALL)
  err = nilfs_construct_dsync_segment(inode->i_sb, inode,
          wbc->range_start,
          wbc->range_end);
 return err;
}

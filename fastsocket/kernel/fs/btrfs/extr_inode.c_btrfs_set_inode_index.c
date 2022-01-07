
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct inode {int dummy; } ;
struct TYPE_2__ {scalar_t__ index_cnt; } ;


 TYPE_1__* BTRFS_I (struct inode*) ;
 int btrfs_inode_delayed_dir_index_count (struct inode*) ;
 int btrfs_set_inode_index_count (struct inode*) ;

int btrfs_set_inode_index(struct inode *dir, u64 *index)
{
 int ret = 0;

 if (BTRFS_I(dir)->index_cnt == (u64)-1) {
  ret = btrfs_inode_delayed_dir_index_count(dir);
  if (ret) {
   ret = btrfs_set_inode_index_count(dir);
   if (ret)
    return ret;
  }
 }

 *index = BTRFS_I(dir)->index_cnt;
 BTRFS_I(dir)->index_cnt++;

 return ret;
}

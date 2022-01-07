
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct inode {int i_sb; } ;
struct hfs_find_data {int dummy; } ;
struct TYPE_4__ {scalar_t__ cached_blocks; scalar_t__ cached_start; } ;
struct TYPE_3__ {int ext_tree; } ;


 TYPE_2__ HFSPLUS_I (struct inode*) ;
 TYPE_1__ HFSPLUS_SB (int ) ;
 int __hfsplus_ext_cache_extent (struct hfs_find_data*,struct inode*,scalar_t__) ;
 int hfs_find_exit (struct hfs_find_data*) ;
 int hfs_find_init (int ,struct hfs_find_data*) ;

__attribute__((used)) static int hfsplus_ext_read_extent(struct inode *inode, u32 block)
{
 struct hfs_find_data fd;
 int res;

 if (block >= HFSPLUS_I(inode).cached_start &&
     block < HFSPLUS_I(inode).cached_start + HFSPLUS_I(inode).cached_blocks)
  return 0;

 hfs_find_init(HFSPLUS_SB(inode->i_sb).ext_tree, &fd);
 res = __hfsplus_ext_cache_extent(&fd, inode, block);
 hfs_find_exit(&fd);
 return res;
}

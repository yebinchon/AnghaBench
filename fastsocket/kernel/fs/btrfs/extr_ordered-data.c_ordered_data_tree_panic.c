
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct inode {int i_sb; } ;
struct btrfs_fs_info {int dummy; } ;


 int btrfs_panic (struct btrfs_fs_info*,int,char*,unsigned long long) ;
 struct btrfs_fs_info* btrfs_sb (int ) ;

__attribute__((used)) static void ordered_data_tree_panic(struct inode *inode, int errno,
            u64 offset)
{
 struct btrfs_fs_info *fs_info = btrfs_sb(inode->i_sb);
 btrfs_panic(fs_info, errno, "Inconsistency in ordered tree at offset "
      "%llu\n", (unsigned long long)offset);
}

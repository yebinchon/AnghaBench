
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_key {int dummy; } ;


 int BTRFS_INODE_ITEM_KEY ;
 int __inode_info (int ,int ,int ,struct btrfs_root*,struct btrfs_path*,struct btrfs_key*) ;

int inode_item_info(u64 inum, u64 ioff, struct btrfs_root *fs_root,
   struct btrfs_path *path)
{
 struct btrfs_key key;
 return __inode_info(inum, ioff, BTRFS_INODE_ITEM_KEY, fs_root, path,
    &key);
}

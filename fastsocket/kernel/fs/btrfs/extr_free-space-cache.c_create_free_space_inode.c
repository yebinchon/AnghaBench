
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int dummy; } ;
struct TYPE_2__ {int objectid; } ;
struct btrfs_block_group_cache {TYPE_1__ key; } ;


 int __create_free_space_inode (struct btrfs_root*,struct btrfs_trans_handle*,struct btrfs_path*,int ,int ) ;
 int btrfs_find_free_objectid (struct btrfs_root*,int *) ;

int create_free_space_inode(struct btrfs_root *root,
       struct btrfs_trans_handle *trans,
       struct btrfs_block_group_cache *block_group,
       struct btrfs_path *path)
{
 int ret;
 u64 ino;

 ret = btrfs_find_free_objectid(root, &ino);
 if (ret < 0)
  return ret;

 return __create_free_space_inode(root, trans, path, ino,
      block_group->key.objectid);
}

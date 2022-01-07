
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_key {scalar_t__ offset; int objectid; } ;
struct btrfs_inode_item {int dummy; } ;


 int BTRFS_INODE_ITEM_KEY ;
 int btrfs_insert_empty_item (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,struct btrfs_key*,int) ;
 int btrfs_set_key_type (struct btrfs_key*,int ) ;

int btrfs_insert_empty_inode(struct btrfs_trans_handle *trans,
        struct btrfs_root *root,
        struct btrfs_path *path, u64 objectid)
{
 struct btrfs_key key;
 int ret;
 key.objectid = objectid;
 btrfs_set_key_type(&key, BTRFS_INODE_ITEM_KEY);
 key.offset = 0;

 ret = btrfs_insert_empty_item(trans, root, path, &key,
          sizeof(struct btrfs_inode_item));
 return ret;
}

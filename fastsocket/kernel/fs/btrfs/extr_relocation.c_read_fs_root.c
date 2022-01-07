
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct btrfs_root {int dummy; } ;
struct btrfs_key {void* offset; int type; void* objectid; } ;
struct btrfs_fs_info {int dummy; } ;


 int BTRFS_ROOT_ITEM_KEY ;
 struct btrfs_root* btrfs_read_fs_root_no_name (struct btrfs_fs_info*,struct btrfs_key*) ;
 scalar_t__ is_cowonly_root (void*) ;

__attribute__((used)) static struct btrfs_root *read_fs_root(struct btrfs_fs_info *fs_info,
     u64 root_objectid)
{
 struct btrfs_key key;

 key.objectid = root_objectid;
 key.type = BTRFS_ROOT_ITEM_KEY;
 if (is_cowonly_root(root_objectid))
  key.offset = 0;
 else
  key.offset = (u64)-1;

 return btrfs_read_fs_root_no_name(fs_info, &key);
}

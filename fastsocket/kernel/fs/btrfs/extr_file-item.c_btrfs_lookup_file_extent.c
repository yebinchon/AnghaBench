
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_key {void* offset; void* objectid; } ;


 int BTRFS_EXTENT_DATA_KEY ;
 int btrfs_search_slot (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int,int) ;
 int btrfs_set_key_type (struct btrfs_key*,int ) ;

int btrfs_lookup_file_extent(struct btrfs_trans_handle *trans,
        struct btrfs_root *root,
        struct btrfs_path *path, u64 objectid,
        u64 offset, int mod)
{
 int ret;
 struct btrfs_key file_key;
 int ins_len = mod < 0 ? -1 : 0;
 int cow = mod != 0;

 file_key.objectid = objectid;
 file_key.offset = offset;
 btrfs_set_key_type(&file_key, BTRFS_EXTENT_DATA_KEY);
 ret = btrfs_search_slot(trans, root, &file_key, path, ins_len, cow);
 return ret;
}

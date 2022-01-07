
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_key {int offset; int objectid; } ;
struct btrfs_dir_item {int dummy; } ;


 int BTRFS_XATTR_ITEM_KEY ;
 struct btrfs_dir_item* ERR_PTR (int) ;
 struct btrfs_dir_item* btrfs_match_dir_item_name (struct btrfs_root*,struct btrfs_path*,char const*,int ) ;
 int btrfs_name_hash (char const*,int ) ;
 int btrfs_search_slot (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int,int) ;
 int btrfs_set_key_type (struct btrfs_key*,int ) ;

struct btrfs_dir_item *btrfs_lookup_xattr(struct btrfs_trans_handle *trans,
       struct btrfs_root *root,
       struct btrfs_path *path, u64 dir,
       const char *name, u16 name_len,
       int mod)
{
 int ret;
 struct btrfs_key key;
 int ins_len = mod < 0 ? -1 : 0;
 int cow = mod != 0;

 key.objectid = dir;
 btrfs_set_key_type(&key, BTRFS_XATTR_ITEM_KEY);
 key.offset = btrfs_name_hash(name, name_len);
 ret = btrfs_search_slot(trans, root, &key, path, ins_len, cow);
 if (ret < 0)
  return ERR_PTR(ret);
 if (ret > 0)
  return ((void*)0);

 return btrfs_match_dir_item_name(root, path, name, name_len);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_key {void* offset; int type; void* objectid; } ;


 int BTRFS_ROOT_REF_KEY ;
 int btrfs_search_slot (int *,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int ,int ) ;

int btrfs_find_root_ref(struct btrfs_root *tree_root,
     struct btrfs_path *path,
     u64 root_id, u64 ref_id)
{
 struct btrfs_key key;
 int ret;

 key.objectid = root_id;
 key.type = BTRFS_ROOT_REF_KEY;
 key.offset = ref_id;

 ret = btrfs_search_slot(((void*)0), tree_root, &key, path, 0, 0);
 return ret;
}

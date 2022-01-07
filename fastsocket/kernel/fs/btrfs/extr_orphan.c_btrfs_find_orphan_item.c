
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_key {int offset; int type; int objectid; } ;


 int BTRFS_ORPHAN_ITEM_KEY ;
 int BTRFS_ORPHAN_OBJECTID ;
 int ENOMEM ;
 struct btrfs_path* btrfs_alloc_path () ;
 int btrfs_free_path (struct btrfs_path*) ;
 int btrfs_search_slot (int *,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int ,int ) ;

int btrfs_find_orphan_item(struct btrfs_root *root, u64 offset)
{
 struct btrfs_path *path;
 struct btrfs_key key;
 int ret;

 key.objectid = BTRFS_ORPHAN_OBJECTID;
 key.type = BTRFS_ORPHAN_ITEM_KEY;
 key.offset = offset;

 path = btrfs_alloc_path();
 if (!path)
  return -ENOMEM;

 ret = btrfs_search_slot(((void*)0), root, &key, path, 0, 0);

 btrfs_free_path(path);
 return ret;
}

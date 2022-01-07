
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct extent_buffer {int dummy; } ;
struct btrfs_root_item {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int* slots; struct extent_buffer** nodes; } ;
struct btrfs_key {scalar_t__ objectid; scalar_t__ type; scalar_t__ offset; } ;
typedef int found_key ;


 scalar_t__ BTRFS_ROOT_ITEM_KEY ;
 int BUG_ON (int) ;
 int ENOMEM ;
 struct btrfs_path* btrfs_alloc_path () ;
 int btrfs_free_path (struct btrfs_path*) ;
 int btrfs_item_key_to_cpu (struct extent_buffer*,struct btrfs_key*,int) ;
 int btrfs_item_ptr_offset (struct extent_buffer*,int) ;
 int btrfs_search_slot (int *,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int ,int ) ;
 int memcpy (struct btrfs_key*,struct btrfs_key*,int) ;
 int read_extent_buffer (struct extent_buffer*,struct btrfs_root_item*,int ,int) ;

int btrfs_find_last_root(struct btrfs_root *root, u64 objectid,
   struct btrfs_root_item *item, struct btrfs_key *key)
{
 struct btrfs_path *path;
 struct btrfs_key search_key;
 struct btrfs_key found_key;
 struct extent_buffer *l;
 int ret;
 int slot;

 search_key.objectid = objectid;
 search_key.type = BTRFS_ROOT_ITEM_KEY;
 search_key.offset = (u64)-1;

 path = btrfs_alloc_path();
 if (!path)
  return -ENOMEM;
 ret = btrfs_search_slot(((void*)0), root, &search_key, path, 0, 0);
 if (ret < 0)
  goto out;

 BUG_ON(ret == 0);
 if (path->slots[0] == 0) {
  ret = 1;
  goto out;
 }
 l = path->nodes[0];
 slot = path->slots[0] - 1;
 btrfs_item_key_to_cpu(l, &found_key, slot);
 if (found_key.objectid != objectid ||
     found_key.type != BTRFS_ROOT_ITEM_KEY) {
  ret = 1;
  goto out;
 }
 if (item)
  read_extent_buffer(l, item, btrfs_item_ptr_offset(l, slot),
       sizeof(*item));
 if (key)
  memcpy(key, &found_key, sizeof(found_key));
 ret = 0;
out:
 btrfs_free_path(path);
 return ret;
}

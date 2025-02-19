
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_buffer {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int* slots; struct extent_buffer** nodes; } ;
struct btrfs_key {scalar_t__ objectid; scalar_t__ type; } ;


 scalar_t__ BTRFS_BLOCK_GROUP_ITEM_KEY ;
 int btrfs_header_nritems (struct extent_buffer*) ;
 int btrfs_item_key_to_cpu (struct extent_buffer*,struct btrfs_key*,int) ;
 int btrfs_next_leaf (struct btrfs_root*,struct btrfs_path*) ;
 int btrfs_search_slot (int *,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int ,int ) ;

__attribute__((used)) static int find_first_block_group(struct btrfs_root *root,
  struct btrfs_path *path, struct btrfs_key *key)
{
 int ret = 0;
 struct btrfs_key found_key;
 struct extent_buffer *leaf;
 int slot;

 ret = btrfs_search_slot(((void*)0), root, key, path, 0, 0);
 if (ret < 0)
  goto out;

 while (1) {
  slot = path->slots[0];
  leaf = path->nodes[0];
  if (slot >= btrfs_header_nritems(leaf)) {
   ret = btrfs_next_leaf(root, path);
   if (ret == 0)
    continue;
   if (ret < 0)
    goto out;
   break;
  }
  btrfs_item_key_to_cpu(leaf, &found_key, slot);

  if (found_key.objectid >= key->objectid &&
      found_key.type == BTRFS_BLOCK_GROUP_ITEM_KEY) {
   ret = 0;
   goto out;
  }
  path->slots[0]++;
 }
out:
 return ret;
}

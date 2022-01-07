
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int* slots; struct extent_buffer** nodes; } ;
struct btrfs_key {int dummy; } ;
struct btrfs_disk_key {int dummy; } ;


 int BUG_ON (int) ;
 int btrfs_cpu_key_to_disk (struct btrfs_disk_key*,struct btrfs_key*) ;
 int btrfs_header_nritems (struct extent_buffer*) ;
 int btrfs_item_key (struct extent_buffer*,struct btrfs_disk_key*,int) ;
 int btrfs_mark_buffer_dirty (struct extent_buffer*) ;
 int btrfs_set_item_key (struct extent_buffer*,struct btrfs_disk_key*,int) ;
 scalar_t__ comp_keys (struct btrfs_disk_key*,struct btrfs_key*) ;
 int fixup_low_keys (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,struct btrfs_disk_key*,int) ;

void btrfs_set_item_key_safe(struct btrfs_trans_handle *trans,
        struct btrfs_root *root, struct btrfs_path *path,
        struct btrfs_key *new_key)
{
 struct btrfs_disk_key disk_key;
 struct extent_buffer *eb;
 int slot;

 eb = path->nodes[0];
 slot = path->slots[0];
 if (slot > 0) {
  btrfs_item_key(eb, &disk_key, slot - 1);
  BUG_ON(comp_keys(&disk_key, new_key) >= 0);
 }
 if (slot < btrfs_header_nritems(eb) - 1) {
  btrfs_item_key(eb, &disk_key, slot + 1);
  BUG_ON(comp_keys(&disk_key, new_key) <= 0);
 }

 btrfs_cpu_key_to_disk(&disk_key, new_key);
 btrfs_set_item_key(eb, &disk_key, slot);
 btrfs_mark_buffer_dirty(eb);
 if (slot == 0)
  fixup_low_keys(trans, root, path, &disk_key, 1);
}

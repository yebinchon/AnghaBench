
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int * slots; struct extent_buffer** nodes; } ;
struct btrfs_key {int dummy; } ;


 int ENOMEM ;
 struct btrfs_path* btrfs_alloc_path () ;
 int btrfs_free_path (struct btrfs_path*) ;
 int btrfs_insert_empty_item (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,struct btrfs_key*,int ) ;
 unsigned long btrfs_item_ptr_offset (struct extent_buffer*,int ) ;
 int btrfs_mark_buffer_dirty (struct extent_buffer*) ;
 int write_extent_buffer (struct extent_buffer*,void*,unsigned long,int ) ;

int btrfs_insert_item(struct btrfs_trans_handle *trans, struct btrfs_root
        *root, struct btrfs_key *cpu_key, void *data, u32
        data_size)
{
 int ret = 0;
 struct btrfs_path *path;
 struct extent_buffer *leaf;
 unsigned long ptr;

 path = btrfs_alloc_path();
 if (!path)
  return -ENOMEM;
 ret = btrfs_insert_empty_item(trans, root, path, cpu_key, data_size);
 if (!ret) {
  leaf = path->nodes[0];
  ptr = btrfs_item_ptr_offset(leaf, path->slots[0]);
  write_extent_buffer(leaf, data, ptr, data_size);
  btrfs_mark_buffer_dirty(leaf);
 }
 btrfs_free_path(path);
 return ret;
}

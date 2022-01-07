
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct map_lookup {int num_stripes; int type; TYPE_3__* stripes; } ;
struct extent_map_tree {int lock; } ;
struct extent_map {scalar_t__ start; scalar_t__ len; int * bdev; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {TYPE_2__* fs_info; } ;
struct TYPE_6__ {scalar_t__ dev; int physical; } ;
struct TYPE_4__ {struct extent_map_tree map_tree; } ;
struct TYPE_5__ {TYPE_1__ mapping_tree; struct btrfs_root* extent_root; struct btrfs_root* chunk_root; } ;


 int BTRFS_BLOCK_GROUP_SYSTEM ;
 int BUG_ON (int) ;
 int ENOSPC ;
 int IS_ERR (struct btrfs_trans_handle*) ;
 int btrfs_can_relocate (struct btrfs_root*,scalar_t__) ;
 int btrfs_del_sys_chunk (struct btrfs_root*,scalar_t__,scalar_t__) ;
 int btrfs_end_transaction (struct btrfs_trans_handle*,struct btrfs_root*) ;
 int btrfs_free_chunk (struct btrfs_trans_handle*,struct btrfs_root*,scalar_t__,scalar_t__,scalar_t__) ;
 int btrfs_free_dev_extent (struct btrfs_trans_handle*,scalar_t__,int ) ;
 int btrfs_relocate_block_group (struct btrfs_root*,scalar_t__) ;
 int btrfs_remove_block_group (struct btrfs_trans_handle*,struct btrfs_root*,scalar_t__) ;
 struct btrfs_trans_handle* btrfs_start_transaction (struct btrfs_root*,int ) ;
 int btrfs_update_device (struct btrfs_trans_handle*,scalar_t__) ;
 int free_extent_map (struct extent_map*) ;
 int kfree (struct map_lookup*) ;
 int lock_chunks (struct btrfs_root*) ;
 struct extent_map* lookup_extent_mapping (struct extent_map_tree*,scalar_t__,int) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int remove_extent_mapping (struct extent_map_tree*,struct extent_map*) ;
 int trace_btrfs_chunk_free (struct btrfs_root*,struct map_lookup*,scalar_t__,scalar_t__) ;
 int unlock_chunks (struct btrfs_root*) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static int btrfs_relocate_chunk(struct btrfs_root *root,
    u64 chunk_tree, u64 chunk_objectid,
    u64 chunk_offset)
{
 struct extent_map_tree *em_tree;
 struct btrfs_root *extent_root;
 struct btrfs_trans_handle *trans;
 struct extent_map *em;
 struct map_lookup *map;
 int ret;
 int i;

 root = root->fs_info->chunk_root;
 extent_root = root->fs_info->extent_root;
 em_tree = &root->fs_info->mapping_tree.map_tree;

 ret = btrfs_can_relocate(extent_root, chunk_offset);
 if (ret)
  return -ENOSPC;


 ret = btrfs_relocate_block_group(extent_root, chunk_offset);
 if (ret)
  return ret;

 trans = btrfs_start_transaction(root, 0);
 BUG_ON(IS_ERR(trans));

 lock_chunks(root);





 read_lock(&em_tree->lock);
 em = lookup_extent_mapping(em_tree, chunk_offset, 1);
 read_unlock(&em_tree->lock);

 BUG_ON(!em || em->start > chunk_offset ||
        em->start + em->len < chunk_offset);
 map = (struct map_lookup *)em->bdev;

 for (i = 0; i < map->num_stripes; i++) {
  ret = btrfs_free_dev_extent(trans, map->stripes[i].dev,
         map->stripes[i].physical);
  BUG_ON(ret);

  if (map->stripes[i].dev) {
   ret = btrfs_update_device(trans, map->stripes[i].dev);
   BUG_ON(ret);
  }
 }
 ret = btrfs_free_chunk(trans, root, chunk_tree, chunk_objectid,
          chunk_offset);

 BUG_ON(ret);

 trace_btrfs_chunk_free(root, map, chunk_offset, em->len);

 if (map->type & BTRFS_BLOCK_GROUP_SYSTEM) {
  ret = btrfs_del_sys_chunk(root, chunk_objectid, chunk_offset);
  BUG_ON(ret);
 }

 ret = btrfs_remove_block_group(trans, extent_root, chunk_offset);
 BUG_ON(ret);

 write_lock(&em_tree->lock);
 remove_extent_mapping(em_tree, em);
 write_unlock(&em_tree->lock);

 kfree(map);
 em->bdev = ((void*)0);


 free_extent_map(em);

 free_extent_map(em);

 unlock_chunks(root);
 btrfs_end_transaction(trans, root);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct inode {int dummy; } ;
struct extent_map_tree {int lock; } ;
struct extent_map {scalar_t__ start; scalar_t__ len; scalar_t__ orig_start; scalar_t__ block_len; scalar_t__ flags; int bdev; int block_start; } ;
struct btrfs_trans_handle {int * block_rsv; } ;
struct btrfs_root {TYPE_2__* fs_info; int sectorsize; } ;
struct btrfs_key {scalar_t__ offset; int objectid; } ;
struct TYPE_6__ {scalar_t__ disk_i_size; struct extent_map_tree extent_tree; struct btrfs_root* root; } ;
struct TYPE_5__ {TYPE_1__* fs_devices; int delalloc_block_rsv; } ;
struct TYPE_4__ {int latest_bdev; } ;


 TYPE_3__* BTRFS_I (struct inode*) ;
 int EEXIST ;
 int ENOMEM ;
 struct extent_map* ERR_CAST (struct btrfs_trans_handle*) ;
 struct extent_map* ERR_PTR (int) ;
 int EXTENT_FLAG_PINNED ;
 int EXTENT_MAP_HOLE ;
 scalar_t__ IS_ERR (struct btrfs_trans_handle*) ;
 int add_extent_mapping (struct extent_map_tree*,struct extent_map*) ;
 struct extent_map* alloc_extent_map () ;
 int btrfs_add_inode_defrag (struct btrfs_trans_handle*,struct inode*) ;
 int btrfs_add_ordered_extent_dio (struct inode*,scalar_t__,int ,scalar_t__,scalar_t__,int ) ;
 int btrfs_drop_extent_cache (struct inode*,scalar_t__,scalar_t__,int ) ;
 int btrfs_end_transaction (struct btrfs_trans_handle*,struct btrfs_root*) ;
 int btrfs_free_reserved_extent (struct btrfs_root*,int ,scalar_t__) ;
 struct btrfs_trans_handle* btrfs_join_transaction (struct btrfs_root*) ;
 int btrfs_reserve_extent (struct btrfs_trans_handle*,struct btrfs_root*,scalar_t__,int ,int ,scalar_t__,struct btrfs_key*,int) ;
 int free_extent_map (struct extent_map*) ;
 scalar_t__ get_extent_allocation_hint (struct inode*,scalar_t__,scalar_t__) ;
 int set_bit (int ,scalar_t__*) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static struct extent_map *btrfs_new_extent_direct(struct inode *inode,
        struct extent_map *em,
        u64 start, u64 len)
{
 struct btrfs_root *root = BTRFS_I(inode)->root;
 struct btrfs_trans_handle *trans;
 struct extent_map_tree *em_tree = &BTRFS_I(inode)->extent_tree;
 struct btrfs_key ins;
 u64 alloc_hint;
 int ret;
 bool insert = 0;







 if (em->block_start != EXTENT_MAP_HOLE || em->start != start ||
     em->len != len) {
  free_extent_map(em);
  em = ((void*)0);
  insert = 1;
  btrfs_drop_extent_cache(inode, start, start + len - 1, 0);
 }

 trans = btrfs_join_transaction(root);
 if (IS_ERR(trans))
  return ERR_CAST(trans);

 if (start <= BTRFS_I(inode)->disk_i_size && len < 64 * 1024)
  btrfs_add_inode_defrag(trans, inode);

 trans->block_rsv = &root->fs_info->delalloc_block_rsv;

 alloc_hint = get_extent_allocation_hint(inode, start, len);
 ret = btrfs_reserve_extent(trans, root, len, root->sectorsize, 0,
       alloc_hint, &ins, 1);
 if (ret) {
  em = ERR_PTR(ret);
  goto out;
 }

 if (!em) {
  em = alloc_extent_map();
  if (!em) {
   em = ERR_PTR(-ENOMEM);
   goto out;
  }
 }

 em->start = start;
 em->orig_start = em->start;
 em->len = ins.offset;

 em->block_start = ins.objectid;
 em->block_len = ins.offset;
 em->bdev = root->fs_info->fs_devices->latest_bdev;





 em->flags = 0;
 set_bit(EXTENT_FLAG_PINNED, &em->flags);

 while (insert) {
  write_lock(&em_tree->lock);
  ret = add_extent_mapping(em_tree, em);
  write_unlock(&em_tree->lock);
  if (ret != -EEXIST)
   break;
  btrfs_drop_extent_cache(inode, start, start + em->len - 1, 0);
 }

 ret = btrfs_add_ordered_extent_dio(inode, start, ins.objectid,
        ins.offset, ins.offset, 0);
 if (ret) {
  btrfs_free_reserved_extent(root, ins.objectid, ins.offset);
  em = ERR_PTR(ret);
 }
out:
 btrfs_end_transaction(trans, root);
 return em;
}

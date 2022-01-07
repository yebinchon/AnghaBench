
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int fs_info; } ;
struct btrfs_key {int offset; int objectid; } ;
struct btrfs_disk_key {int dummy; } ;
struct btrfs_delayed_extent_op {int update_key; int update_flags; scalar_t__ is_data; int flags_to_set; int key; } ;
typedef struct extent_buffer btrfs_block_rsv ;


 int BTRFS_ADD_DELAYED_EXTENT ;
 int BTRFS_BLOCK_FLAG_FULL_BACKREF ;
 int BTRFS_TREE_LOG_OBJECTID ;
 int BTRFS_TREE_RELOC_OBJECTID ;
 int BUG_ON (int) ;
 struct extent_buffer* ERR_CAST (struct extent_buffer*) ;
 struct extent_buffer* ERR_PTR (int) ;
 int GFP_NOFS ;
 int IS_ERR (struct extent_buffer*) ;
 int btrfs_add_delayed_tree_ref (int ,struct btrfs_trans_handle*,int ,int ,int ,int ,int,int ,struct btrfs_delayed_extent_op*,int ) ;
 struct extent_buffer* btrfs_init_new_buffer (struct btrfs_trans_handle*,struct btrfs_root*,int ,int ,int) ;
 int btrfs_reserve_extent (struct btrfs_trans_handle*,struct btrfs_root*,int ,int ,int ,int ,struct btrfs_key*,int ) ;
 struct btrfs_delayed_extent_op* kmalloc (int,int ) ;
 int memcpy (int *,struct btrfs_disk_key*,int) ;
 int memset (int *,int ,int) ;
 int unuse_block_rsv (int ,struct extent_buffer*,int ) ;
 struct extent_buffer* use_block_rsv (struct btrfs_trans_handle*,struct btrfs_root*,int ) ;

struct extent_buffer *btrfs_alloc_free_block(struct btrfs_trans_handle *trans,
     struct btrfs_root *root, u32 blocksize,
     u64 parent, u64 root_objectid,
     struct btrfs_disk_key *key, int level,
     u64 hint, u64 empty_size)
{
 struct btrfs_key ins;
 struct btrfs_block_rsv *block_rsv;
 struct extent_buffer *buf;
 u64 flags = 0;
 int ret;


 block_rsv = use_block_rsv(trans, root, blocksize);
 if (IS_ERR(block_rsv))
  return ERR_CAST(block_rsv);

 ret = btrfs_reserve_extent(trans, root, blocksize, blocksize,
       empty_size, hint, &ins, 0);
 if (ret) {
  unuse_block_rsv(root->fs_info, block_rsv, blocksize);
  return ERR_PTR(ret);
 }

 buf = btrfs_init_new_buffer(trans, root, ins.objectid,
        blocksize, level);
 BUG_ON(IS_ERR(buf));

 if (root_objectid == BTRFS_TREE_RELOC_OBJECTID) {
  if (parent == 0)
   parent = ins.objectid;
  flags |= BTRFS_BLOCK_FLAG_FULL_BACKREF;
 } else
  BUG_ON(parent > 0);

 if (root_objectid != BTRFS_TREE_LOG_OBJECTID) {
  struct btrfs_delayed_extent_op *extent_op;
  extent_op = kmalloc(sizeof(*extent_op), GFP_NOFS);
  BUG_ON(!extent_op);
  if (key)
   memcpy(&extent_op->key, key, sizeof(extent_op->key));
  else
   memset(&extent_op->key, 0, sizeof(extent_op->key));
  extent_op->flags_to_set = flags;
  extent_op->update_key = 1;
  extent_op->update_flags = 1;
  extent_op->is_data = 0;

  ret = btrfs_add_delayed_tree_ref(root->fs_info, trans,
     ins.objectid,
     ins.offset, parent, root_objectid,
     level, BTRFS_ADD_DELAYED_EXTENT,
     extent_op, 0);
  BUG_ON(ret);
 }
 return buf;
}

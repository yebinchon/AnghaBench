
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct extent_buffer {scalar_t__ len; scalar_t__ start; int bflags; } ;
struct btrfs_trans_handle {int blocks_used; TYPE_2__* transaction; int transid; } ;
struct TYPE_3__ {scalar_t__ objectid; } ;
struct btrfs_root {int log_transid; int dirty_log_pages; TYPE_1__ root_key; } ;
struct TYPE_4__ {int dirty_pages; } ;


 scalar_t__ BTRFS_TREE_LOG_OBJECTID ;
 int ENOMEM ;
 struct extent_buffer* ERR_PTR (int ) ;
 int EXTENT_BUFFER_STALE ;
 int GFP_NOFS ;
 struct extent_buffer* btrfs_find_create_tree_block (struct btrfs_root*,int ,int ) ;
 int btrfs_set_buffer_lockdep_class (scalar_t__,struct extent_buffer*,int) ;
 int btrfs_set_buffer_uptodate (struct extent_buffer*) ;
 int btrfs_set_header_generation (struct extent_buffer*,int ) ;
 int btrfs_set_lock_blocking (struct extent_buffer*) ;
 int btrfs_tree_lock (struct extent_buffer*) ;
 int clean_tree_block (struct btrfs_trans_handle*,struct btrfs_root*,struct extent_buffer*) ;
 int clear_bit (int ,int *) ;
 int set_extent_dirty (int *,scalar_t__,scalar_t__,int ) ;
 int set_extent_new (int *,scalar_t__,scalar_t__,int ) ;

struct extent_buffer *btrfs_init_new_buffer(struct btrfs_trans_handle *trans,
         struct btrfs_root *root,
         u64 bytenr, u32 blocksize,
         int level)
{
 struct extent_buffer *buf;

 buf = btrfs_find_create_tree_block(root, bytenr, blocksize);
 if (!buf)
  return ERR_PTR(-ENOMEM);
 btrfs_set_header_generation(buf, trans->transid);
 btrfs_set_buffer_lockdep_class(root->root_key.objectid, buf, level);
 btrfs_tree_lock(buf);
 clean_tree_block(trans, root, buf);
 clear_bit(EXTENT_BUFFER_STALE, &buf->bflags);

 btrfs_set_lock_blocking(buf);
 btrfs_set_buffer_uptodate(buf);

 if (root->root_key.objectid == BTRFS_TREE_LOG_OBJECTID) {




  if (root->log_transid % 2 == 0)
   set_extent_dirty(&root->dirty_log_pages, buf->start,
     buf->start + buf->len - 1, GFP_NOFS);
  else
   set_extent_new(&root->dirty_log_pages, buf->start,
     buf->start + buf->len - 1, GFP_NOFS);
 } else {
  set_extent_dirty(&trans->transaction->dirty_pages, buf->start,
    buf->start + buf->len - 1, GFP_NOFS);
 }
 trans->blocks_used++;

 return buf;
}

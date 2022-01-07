
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct walk_control {int (* process_func ) (struct btrfs_root*,struct extent_buffer*,struct walk_control*,int ) ;scalar_t__ free; } ;
struct extent_buffer {int len; int start; } ;
struct btrfs_trans_handle {int dummy; } ;
struct TYPE_2__ {scalar_t__ objectid; } ;
struct btrfs_root {TYPE_1__ root_key; struct extent_buffer* node; } ;
struct btrfs_path {struct extent_buffer** nodes; scalar_t__* slots; } ;


 scalar_t__ BTRFS_TREE_LOG_OBJECTID ;
 int BUG_ON (int) ;
 int ENOMEM ;
 int WARN_ON (int) ;
 struct btrfs_path* btrfs_alloc_path () ;
 int btrfs_free_and_pin_reserved_extent (struct btrfs_root*,int ,int ) ;
 int btrfs_free_path (struct btrfs_path*) ;
 int btrfs_header_generation (struct extent_buffer*) ;
 int btrfs_header_level (struct extent_buffer*) ;
 int btrfs_set_lock_blocking (struct extent_buffer*) ;
 int btrfs_tree_lock (struct extent_buffer*) ;
 int btrfs_tree_unlock (struct extent_buffer*) ;
 int btrfs_wait_tree_block_writeback (struct extent_buffer*) ;
 int clean_tree_block (struct btrfs_trans_handle*,struct btrfs_root*,struct extent_buffer*) ;
 int extent_buffer_get (struct extent_buffer*) ;
 int free_extent_buffer (struct extent_buffer*) ;
 int stub1 (struct btrfs_root*,struct extent_buffer*,struct walk_control*,int ) ;
 int walk_down_log_tree (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,int*,struct walk_control*) ;
 int walk_up_log_tree (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,int*,struct walk_control*) ;

__attribute__((used)) static int walk_log_tree(struct btrfs_trans_handle *trans,
    struct btrfs_root *log, struct walk_control *wc)
{
 int ret = 0;
 int wret;
 int level;
 struct btrfs_path *path;
 int i;
 int orig_level;

 path = btrfs_alloc_path();
 if (!path)
  return -ENOMEM;

 level = btrfs_header_level(log->node);
 orig_level = level;
 path->nodes[level] = log->node;
 extent_buffer_get(log->node);
 path->slots[level] = 0;

 while (1) {
  wret = walk_down_log_tree(trans, log, path, &level, wc);
  if (wret > 0)
   break;
  if (wret < 0) {
   ret = wret;
   goto out;
  }

  wret = walk_up_log_tree(trans, log, path, &level, wc);
  if (wret > 0)
   break;
  if (wret < 0) {
   ret = wret;
   goto out;
  }
 }


 if (path->nodes[orig_level]) {
  ret = wc->process_func(log, path->nodes[orig_level], wc,
    btrfs_header_generation(path->nodes[orig_level]));
  if (ret)
   goto out;
  if (wc->free) {
   struct extent_buffer *next;

   next = path->nodes[orig_level];

   btrfs_tree_lock(next);
   btrfs_set_lock_blocking(next);
   clean_tree_block(trans, log, next);
   btrfs_wait_tree_block_writeback(next);
   btrfs_tree_unlock(next);

   WARN_ON(log->root_key.objectid !=
    BTRFS_TREE_LOG_OBJECTID);
   ret = btrfs_free_and_pin_reserved_extent(log, next->start,
        next->len);
   BUG_ON(ret);
  }
 }

out:
 for (i = 0; i <= orig_level; i++) {
  if (path->nodes[i]) {
   free_extent_buffer(path->nodes[i]);
   path->nodes[i] = ((void*)0);
  }
 }
 btrfs_free_path(path);
 return ret;
}

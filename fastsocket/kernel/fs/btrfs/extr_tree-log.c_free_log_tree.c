
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct walk_control {int free; int process_func; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int node; int dirty_log_pages; } ;


 int BUG_ON (int) ;
 int EXTENT_DIRTY ;
 int EXTENT_NEW ;
 int GFP_NOFS ;
 int clear_extent_bits (int *,int ,int ,int,int ) ;
 int find_first_extent_bit (int *,int ,int *,int *,int) ;
 int free_extent_buffer (int ) ;
 int kfree (struct btrfs_root*) ;
 int process_one_buffer ;
 int walk_log_tree (struct btrfs_trans_handle*,struct btrfs_root*,struct walk_control*) ;

__attribute__((used)) static void free_log_tree(struct btrfs_trans_handle *trans,
     struct btrfs_root *log)
{
 int ret;
 u64 start;
 u64 end;
 struct walk_control wc = {
  .free = 1,
  .process_func = process_one_buffer
 };

 ret = walk_log_tree(trans, log, &wc);
 BUG_ON(ret);

 while (1) {
  ret = find_first_extent_bit(&log->dirty_log_pages,
    0, &start, &end, EXTENT_DIRTY | EXTENT_NEW);
  if (ret)
   break;

  clear_extent_bits(&log->dirty_log_pages, start, end,
      EXTENT_DIRTY | EXTENT_NEW, GFP_NOFS);
 }

 free_extent_buffer(log->node);
 kfree(log);
}

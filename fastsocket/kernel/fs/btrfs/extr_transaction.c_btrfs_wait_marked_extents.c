
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct extent_io_tree {int dummy; } ;
struct btrfs_root {TYPE_2__* fs_info; } ;
struct address_space {int dummy; } ;
struct TYPE_4__ {TYPE_1__* btree_inode; } ;
struct TYPE_3__ {struct address_space* i_mapping; } ;


 int EXTENT_NEED_WAIT ;
 int GFP_NOFS ;
 int clear_extent_bits (struct extent_io_tree*,scalar_t__,scalar_t__,int ,int ) ;
 int cond_resched () ;
 int filemap_fdatawait_range (struct address_space*,scalar_t__,scalar_t__) ;
 int find_first_extent_bit (struct extent_io_tree*,scalar_t__,scalar_t__*,scalar_t__*,int ) ;

int btrfs_wait_marked_extents(struct btrfs_root *root,
         struct extent_io_tree *dirty_pages, int mark)
{
 int err = 0;
 int werr = 0;
 struct address_space *mapping = root->fs_info->btree_inode->i_mapping;
 u64 start = 0;
 u64 end;

 while (!find_first_extent_bit(dirty_pages, start, &start, &end,
          EXTENT_NEED_WAIT)) {
  clear_extent_bits(dirty_pages, start, end, EXTENT_NEED_WAIT, GFP_NOFS);
  err = filemap_fdatawait_range(mapping, start, end);
  if (err)
   werr = err;
  cond_resched();
  start = end + 1;
 }
 if (err)
  werr = err;
 return werr;
}

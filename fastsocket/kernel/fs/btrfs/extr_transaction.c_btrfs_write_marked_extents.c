
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
 int cond_resched () ;
 int convert_extent_bit (struct extent_io_tree*,scalar_t__,scalar_t__,int ,int,int ) ;
 int filemap_fdatawrite_range (struct address_space*,scalar_t__,scalar_t__) ;
 int find_first_extent_bit (struct extent_io_tree*,scalar_t__,scalar_t__*,scalar_t__*,int) ;

int btrfs_write_marked_extents(struct btrfs_root *root,
          struct extent_io_tree *dirty_pages, int mark)
{
 int err = 0;
 int werr = 0;
 struct address_space *mapping = root->fs_info->btree_inode->i_mapping;
 u64 start = 0;
 u64 end;

 while (!find_first_extent_bit(dirty_pages, start, &start, &end,
          mark)) {
  convert_extent_bit(dirty_pages, start, end, EXTENT_NEED_WAIT, mark,
       GFP_NOFS);
  err = filemap_fdatawrite_range(mapping, start, end);
  if (err)
   werr = err;
  cond_resched();
  start = end + 1;
 }
 if (err)
  werr = err;
 return werr;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct inode {int dummy; } ;
struct extent_io_tree {int dummy; } ;
struct extent_buffer {int bflags; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct TYPE_4__ {struct extent_io_tree io_tree; } ;
struct TYPE_3__ {struct inode* btree_inode; } ;


 TYPE_2__* BTRFS_I (struct inode*) ;
 int EIO ;
 int EXTENT_BUFFER_CORRUPT ;
 int EXTENT_BUFFER_READAHEAD ;
 int WAIT_PAGE_LOCK ;
 int btree_get_extent ;
 struct extent_buffer* btrfs_find_create_tree_block (struct btrfs_root*,int ,int ) ;
 scalar_t__ extent_buffer_uptodate (struct extent_buffer*) ;
 int free_extent_buffer (struct extent_buffer*) ;
 int read_extent_buffer_pages (struct extent_io_tree*,struct extent_buffer*,int ,int ,int ,int) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

int reada_tree_block_flagged(struct btrfs_root *root, u64 bytenr, u32 blocksize,
    int mirror_num, struct extent_buffer **eb)
{
 struct extent_buffer *buf = ((void*)0);
 struct inode *btree_inode = root->fs_info->btree_inode;
 struct extent_io_tree *io_tree = &BTRFS_I(btree_inode)->io_tree;
 int ret;

 buf = btrfs_find_create_tree_block(root, bytenr, blocksize);
 if (!buf)
  return 0;

 set_bit(EXTENT_BUFFER_READAHEAD, &buf->bflags);

 ret = read_extent_buffer_pages(io_tree, buf, 0, WAIT_PAGE_LOCK,
           btree_get_extent, mirror_num);
 if (ret) {
  free_extent_buffer(buf);
  return ret;
 }

 if (test_bit(EXTENT_BUFFER_CORRUPT, &buf->bflags)) {
  free_extent_buffer(buf);
  return -EIO;
 } else if (extent_buffer_uptodate(buf)) {
  *eb = buf;
 } else {
  free_extent_buffer(buf);
 }
 return 0;
}

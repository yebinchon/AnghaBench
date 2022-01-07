
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct inode {int dummy; } ;
struct extent_buffer {int dummy; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct TYPE_4__ {int io_tree; } ;
struct TYPE_3__ {struct inode* btree_inode; } ;


 TYPE_2__* BTRFS_I (struct inode*) ;
 int WAIT_NONE ;
 int btree_get_extent ;
 struct extent_buffer* btrfs_find_create_tree_block (struct btrfs_root*,int ,int ) ;
 int free_extent_buffer (struct extent_buffer*) ;
 int read_extent_buffer_pages (int *,struct extent_buffer*,int ,int ,int ,int ) ;

int readahead_tree_block(struct btrfs_root *root, u64 bytenr, u32 blocksize,
    u64 parent_transid)
{
 struct extent_buffer *buf = ((void*)0);
 struct inode *btree_inode = root->fs_info->btree_inode;
 int ret = 0;

 buf = btrfs_find_create_tree_block(root, bytenr, blocksize);
 if (!buf)
  return 0;
 read_extent_buffer_pages(&BTRFS_I(btree_inode)->io_tree,
     buf, 0, WAIT_NONE, btree_get_extent, 0);
 free_extent_buffer(buf);
 return ret;
}

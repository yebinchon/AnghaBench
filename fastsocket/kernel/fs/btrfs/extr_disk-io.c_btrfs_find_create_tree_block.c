
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
 struct extent_buffer* alloc_extent_buffer (int *,int ,int ) ;

struct extent_buffer *btrfs_find_create_tree_block(struct btrfs_root *root,
       u64 bytenr, u32 blocksize)
{
 struct inode *btree_inode = root->fs_info->btree_inode;
 struct extent_buffer *eb;

 eb = alloc_extent_buffer(&BTRFS_I(btree_inode)->io_tree,
     bytenr, blocksize);
 return eb;
}

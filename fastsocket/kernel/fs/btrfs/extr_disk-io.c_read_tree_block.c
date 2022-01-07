
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct extent_buffer {int dummy; } ;
struct btrfs_root {int dummy; } ;


 int btree_read_extent_buffer_pages (struct btrfs_root*,struct extent_buffer*,int ,int ) ;
 struct extent_buffer* btrfs_find_create_tree_block (struct btrfs_root*,int ,int ) ;

struct extent_buffer *read_tree_block(struct btrfs_root *root, u64 bytenr,
          u32 blocksize, u64 parent_transid)
{
 struct extent_buffer *buf = ((void*)0);
 int ret;

 buf = btrfs_find_create_tree_block(root, bytenr, blocksize);
 if (!buf)
  return ((void*)0);

 ret = btree_read_extent_buffer_pages(root, buf, 0, parent_transid);
 return buf;

}

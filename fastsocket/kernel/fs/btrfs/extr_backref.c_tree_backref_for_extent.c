
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct extent_buffer {int dummy; } ;
struct btrfs_tree_block_info {int dummy; } ;
struct btrfs_extent_item {int dummy; } ;
struct btrfs_extent_inline_ref {int dummy; } ;


 int BTRFS_SHARED_BLOCK_REF_KEY ;
 int BTRFS_TREE_BLOCK_REF_KEY ;
 int __get_extent_inline_ref (unsigned long*,struct extent_buffer*,struct btrfs_extent_item*,int ,struct btrfs_extent_inline_ref**,int*) ;
 int btrfs_extent_inline_ref_offset (struct extent_buffer*,struct btrfs_extent_inline_ref*) ;
 int btrfs_tree_block_level (struct extent_buffer*,struct btrfs_tree_block_info*) ;

int tree_backref_for_extent(unsigned long *ptr, struct extent_buffer *eb,
    struct btrfs_extent_item *ei, u32 item_size,
    u64 *out_root, u8 *out_level)
{
 int ret;
 int type;
 struct btrfs_tree_block_info *info;
 struct btrfs_extent_inline_ref *eiref;

 if (*ptr == (unsigned long)-1)
  return 1;

 while (1) {
  ret = __get_extent_inline_ref(ptr, eb, ei, item_size,
      &eiref, &type);
  if (ret < 0)
   return ret;

  if (type == BTRFS_TREE_BLOCK_REF_KEY ||
      type == BTRFS_SHARED_BLOCK_REF_KEY)
   break;

  if (ret == 1)
   return 1;
 }


 info = (struct btrfs_tree_block_info *)(ei + 1);
 *out_root = btrfs_extent_inline_ref_offset(eb, eiref);
 *out_level = btrfs_tree_block_level(eb, info);

 if (ret == 1)
  *ptr = (unsigned long)-1;

 return 0;
}

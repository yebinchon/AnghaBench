
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_buffer {int dummy; } ;
struct btrfs_root {scalar_t__ ref_cows; int root_item; struct extent_buffer* commit_root; struct extent_buffer* node; } ;


 int BTRFS_HEADER_FLAG_RELOC ;
 scalar_t__ BTRFS_MIXED_BACKREF_REV ;
 scalar_t__ btrfs_header_backref_rev (struct extent_buffer*) ;
 scalar_t__ btrfs_header_flag (struct extent_buffer*,int ) ;
 scalar_t__ btrfs_header_generation (struct extent_buffer*) ;
 scalar_t__ btrfs_root_last_snapshot (int *) ;

int btrfs_block_can_be_shared(struct btrfs_root *root,
         struct extent_buffer *buf)
{






 if (root->ref_cows &&
     buf != root->node && buf != root->commit_root &&
     (btrfs_header_generation(buf) <=
      btrfs_root_last_snapshot(&root->root_item) ||
      btrfs_header_flag(buf, BTRFS_HEADER_FLAG_RELOC)))
  return 1;





 return 0;
}

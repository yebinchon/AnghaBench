
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {scalar_t__ transid; } ;
struct TYPE_2__ {scalar_t__ objectid; } ;
struct btrfs_root {int force_cow; TYPE_1__ root_key; } ;


 int BTRFS_HEADER_FLAG_RELOC ;
 int BTRFS_HEADER_FLAG_WRITTEN ;
 scalar_t__ BTRFS_TREE_RELOC_OBJECTID ;
 scalar_t__ btrfs_header_flag (struct extent_buffer*,int ) ;
 scalar_t__ btrfs_header_generation (struct extent_buffer*) ;
 int smp_rmb () ;

__attribute__((used)) static inline int should_cow_block(struct btrfs_trans_handle *trans,
       struct btrfs_root *root,
       struct extent_buffer *buf)
{

 smp_rmb();
 if (btrfs_header_generation(buf) == trans->transid &&
     !btrfs_header_flag(buf, BTRFS_HEADER_FLAG_WRITTEN) &&
     !(root->root_key.objectid != BTRFS_TREE_RELOC_OBJECTID &&
       btrfs_header_flag(buf, BTRFS_HEADER_FLAG_RELOC)) &&
     !root->force_cow)
  return 0;
 return 1;
}

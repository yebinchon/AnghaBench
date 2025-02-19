
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct inode {int dummy; } ;
struct extent_state {int state; scalar_t__ end; scalar_t__ start; } ;
struct TYPE_4__ {scalar_t__ objectid; } ;
struct btrfs_root {TYPE_2__* fs_info; TYPE_1__ root_key; } ;
struct TYPE_6__ {scalar_t__ delalloc_bytes; int delalloc_inodes; int lock; int outstanding_extents; struct btrfs_root* root; } ;
struct TYPE_5__ {int delalloc_lock; int delalloc_bytes; } ;


 scalar_t__ BTRFS_DATA_RELOC_TREE_OBJECTID ;
 TYPE_3__* BTRFS_I (struct inode*) ;
 int EXTENT_DELALLOC ;
 int EXTENT_DO_ACCOUNTING ;
 int EXTENT_FIRST_DELALLOC ;
 int btrfs_delalloc_release_metadata (struct inode*,scalar_t__) ;
 int btrfs_free_reserved_data_space (struct inode*,scalar_t__) ;
 int btrfs_is_free_space_inode (struct btrfs_root*,struct inode*) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void btrfs_clear_bit_hook(struct inode *inode,
     struct extent_state *state, int *bits)
{





 if ((state->state & EXTENT_DELALLOC) && (*bits & EXTENT_DELALLOC)) {
  struct btrfs_root *root = BTRFS_I(inode)->root;
  u64 len = state->end + 1 - state->start;
  bool do_list = !btrfs_is_free_space_inode(root, inode);

  if (*bits & EXTENT_FIRST_DELALLOC) {
   *bits &= ~EXTENT_FIRST_DELALLOC;
  } else if (!(*bits & EXTENT_DO_ACCOUNTING)) {
   spin_lock(&BTRFS_I(inode)->lock);
   BTRFS_I(inode)->outstanding_extents--;
   spin_unlock(&BTRFS_I(inode)->lock);
  }

  if (*bits & EXTENT_DO_ACCOUNTING)
   btrfs_delalloc_release_metadata(inode, len);

  if (root->root_key.objectid != BTRFS_DATA_RELOC_TREE_OBJECTID
      && do_list)
   btrfs_free_reserved_data_space(inode, len);

  spin_lock(&root->fs_info->delalloc_lock);
  root->fs_info->delalloc_bytes -= len;
  BTRFS_I(inode)->delalloc_bytes -= len;

  if (do_list && BTRFS_I(inode)->delalloc_bytes == 0 &&
      !list_empty(&BTRFS_I(inode)->delalloc_inodes)) {
   list_del_init(&BTRFS_I(inode)->delalloc_inodes);
  }
  spin_unlock(&root->fs_info->delalloc_lock);
 }
}

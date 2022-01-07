
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct inode {int dummy; } ;
struct extent_state {int state; scalar_t__ start; scalar_t__ end; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct TYPE_4__ {int delalloc_inodes; int delalloc_bytes; int lock; int outstanding_extents; struct btrfs_root* root; } ;
struct TYPE_3__ {int delalloc_lock; int delalloc_inodes; int delalloc_bytes; } ;


 TYPE_2__* BTRFS_I (struct inode*) ;
 int EXTENT_DELALLOC ;
 int EXTENT_FIRST_DELALLOC ;
 int btrfs_is_free_space_inode (struct btrfs_root*,struct inode*) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void btrfs_set_bit_hook(struct inode *inode,
          struct extent_state *state, int *bits)
{






 if (!(state->state & EXTENT_DELALLOC) && (*bits & EXTENT_DELALLOC)) {
  struct btrfs_root *root = BTRFS_I(inode)->root;
  u64 len = state->end + 1 - state->start;
  bool do_list = !btrfs_is_free_space_inode(root, inode);

  if (*bits & EXTENT_FIRST_DELALLOC) {
   *bits &= ~EXTENT_FIRST_DELALLOC;
  } else {
   spin_lock(&BTRFS_I(inode)->lock);
   BTRFS_I(inode)->outstanding_extents++;
   spin_unlock(&BTRFS_I(inode)->lock);
  }

  spin_lock(&root->fs_info->delalloc_lock);
  BTRFS_I(inode)->delalloc_bytes += len;
  root->fs_info->delalloc_bytes += len;
  if (do_list && list_empty(&BTRFS_I(inode)->delalloc_inodes)) {
   list_add_tail(&BTRFS_I(inode)->delalloc_inodes,
          &root->fs_info->delalloc_inodes);
  }
  spin_unlock(&root->fs_info->delalloc_lock);
 }
}

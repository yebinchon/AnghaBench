
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct extent_buffer {scalar_t__ len; int bflags; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {TYPE_2__* fs_info; } ;
struct TYPE_4__ {scalar_t__ dirty_metadata_bytes; int delalloc_lock; TYPE_1__* running_transaction; } ;
struct TYPE_3__ {scalar_t__ transid; } ;


 int EOVERFLOW ;
 int EXTENT_BUFFER_DIRTY ;
 int btrfs_assert_tree_locked (struct extent_buffer*) ;
 scalar_t__ btrfs_header_generation (struct extent_buffer*) ;
 int btrfs_panic (TYPE_2__*,int ,char*,scalar_t__,scalar_t__) ;
 int btrfs_set_lock_blocking (struct extent_buffer*) ;
 int clear_extent_buffer_dirty (struct extent_buffer*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

void clean_tree_block(struct btrfs_trans_handle *trans, struct btrfs_root *root,
        struct extent_buffer *buf)
{
 if (btrfs_header_generation(buf) ==
     root->fs_info->running_transaction->transid) {
  btrfs_assert_tree_locked(buf);

  if (test_and_clear_bit(EXTENT_BUFFER_DIRTY, &buf->bflags)) {
   spin_lock(&root->fs_info->delalloc_lock);
   if (root->fs_info->dirty_metadata_bytes >= buf->len)
    root->fs_info->dirty_metadata_bytes -= buf->len;
   else {
    spin_unlock(&root->fs_info->delalloc_lock);
    btrfs_panic(root->fs_info, -EOVERFLOW,
       "Can't clear %lu bytes from "
       " dirty_mdatadata_bytes (%lu)",
       buf->len,
       root->fs_info->dirty_metadata_bytes);
   }
   spin_unlock(&root->fs_info->delalloc_lock);
  }


  btrfs_set_lock_blocking(buf);
  clear_extent_buffer_dirty(buf);
 }
}

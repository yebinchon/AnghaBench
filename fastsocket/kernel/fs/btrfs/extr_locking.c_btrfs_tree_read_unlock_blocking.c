
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct extent_buffer {scalar_t__ lock_owner; int read_locks; int read_lock_wq; int blocking_readers; int lock; scalar_t__ lock_nested; } ;
struct TYPE_2__ {scalar_t__ pid; } ;


 int WARN_ON (int) ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 scalar_t__ atomic_read (int *) ;
 int btrfs_assert_tree_read_locked (struct extent_buffer*) ;
 TYPE_1__* current ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int wake_up (int *) ;

void btrfs_tree_read_unlock_blocking(struct extent_buffer *eb)
{
 if (eb->lock_nested) {
  read_lock(&eb->lock);
  if (eb->lock_nested && current->pid == eb->lock_owner) {
   eb->lock_nested = 0;
   read_unlock(&eb->lock);
   return;
  }
  read_unlock(&eb->lock);
 }
 btrfs_assert_tree_read_locked(eb);
 WARN_ON(atomic_read(&eb->blocking_readers) == 0);
 if (atomic_dec_and_test(&eb->blocking_readers))
  wake_up(&eb->read_lock_wq);
 atomic_dec(&eb->read_locks);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct extent_buffer {scalar_t__ lock_owner; int lock; int spinning_readers; int blocking_readers; int blocking_writers; int spinning_writers; scalar_t__ lock_nested; } ;
struct TYPE_2__ {scalar_t__ pid; } ;


 int BTRFS_READ_LOCK ;
 int BTRFS_WRITE_LOCK ;
 int WARN_ON (int) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int btrfs_assert_tree_locked (struct extent_buffer*) ;
 int btrfs_assert_tree_read_locked (struct extent_buffer*) ;
 TYPE_1__* current ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int write_unlock (int *) ;

void btrfs_set_lock_blocking_rw(struct extent_buffer *eb, int rw)
{
 if (eb->lock_nested) {
  read_lock(&eb->lock);
  if (eb->lock_nested && current->pid == eb->lock_owner) {
   read_unlock(&eb->lock);
   return;
  }
  read_unlock(&eb->lock);
 }
 if (rw == BTRFS_WRITE_LOCK) {
  if (atomic_read(&eb->blocking_writers) == 0) {
   WARN_ON(atomic_read(&eb->spinning_writers) != 1);
   atomic_dec(&eb->spinning_writers);
   btrfs_assert_tree_locked(eb);
   atomic_inc(&eb->blocking_writers);
   write_unlock(&eb->lock);
  }
 } else if (rw == BTRFS_READ_LOCK) {
  btrfs_assert_tree_read_locked(eb);
  atomic_inc(&eb->blocking_readers);
  WARN_ON(atomic_read(&eb->spinning_readers) == 0);
  atomic_dec(&eb->spinning_readers);
  read_unlock(&eb->lock);
 }
 return;
}

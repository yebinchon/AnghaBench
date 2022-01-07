
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct extent_buffer {scalar_t__ lock_owner; int read_lock_wq; int blocking_readers; int spinning_readers; int lock; int write_lock_wq; int blocking_writers; int spinning_writers; scalar_t__ lock_nested; } ;
struct TYPE_2__ {scalar_t__ pid; } ;


 int BTRFS_READ_LOCK_BLOCKING ;
 int BTRFS_WRITE_LOCK_BLOCKING ;
 int BUG_ON (int) ;
 int WARN_ON (int) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 TYPE_1__* current ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int wake_up (int *) ;
 int write_lock (int *) ;

void btrfs_clear_lock_blocking_rw(struct extent_buffer *eb, int rw)
{
 if (eb->lock_nested) {
  read_lock(&eb->lock);
  if (&eb->lock_nested && current->pid == eb->lock_owner) {
   read_unlock(&eb->lock);
   return;
  }
  read_unlock(&eb->lock);
 }
 if (rw == BTRFS_WRITE_LOCK_BLOCKING) {
  BUG_ON(atomic_read(&eb->blocking_writers) != 1);
  write_lock(&eb->lock);
  WARN_ON(atomic_read(&eb->spinning_writers));
  atomic_inc(&eb->spinning_writers);
  if (atomic_dec_and_test(&eb->blocking_writers))
   wake_up(&eb->write_lock_wq);
 } else if (rw == BTRFS_READ_LOCK_BLOCKING) {
  BUG_ON(atomic_read(&eb->blocking_readers) == 0);
  read_lock(&eb->lock);
  atomic_inc(&eb->spinning_readers);
  if (atomic_dec_and_test(&eb->blocking_readers))
   wake_up(&eb->read_lock_wq);
 }
 return;
}

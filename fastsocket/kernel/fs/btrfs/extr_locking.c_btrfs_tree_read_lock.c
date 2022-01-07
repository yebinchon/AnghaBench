
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct extent_buffer {scalar_t__ lock_owner; int lock_nested; int spinning_readers; int read_locks; int lock; int blocking_writers; int write_lock_wq; } ;
struct TYPE_2__ {scalar_t__ pid; } ;


 int BUG_ON (int) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 TYPE_1__* current ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int wait_event (int ,int) ;

void btrfs_tree_read_lock(struct extent_buffer *eb)
{
again:
 read_lock(&eb->lock);
 if (atomic_read(&eb->blocking_writers) &&
     current->pid == eb->lock_owner) {






  BUG_ON(eb->lock_nested);
  eb->lock_nested = 1;
  read_unlock(&eb->lock);
  return;
 }
 read_unlock(&eb->lock);
 wait_event(eb->write_lock_wq, atomic_read(&eb->blocking_writers) == 0);
 read_lock(&eb->lock);
 if (atomic_read(&eb->blocking_writers)) {
  read_unlock(&eb->lock);
  goto again;
 }
 atomic_inc(&eb->read_locks);
 atomic_inc(&eb->spinning_readers);
}

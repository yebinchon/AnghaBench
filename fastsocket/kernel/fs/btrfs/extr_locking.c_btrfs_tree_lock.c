
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct extent_buffer {int lock_owner; int write_locks; int spinning_writers; int blocking_writers; int write_lock_wq; int lock; int blocking_readers; int read_lock_wq; } ;
struct TYPE_2__ {int pid; } ;


 int WARN_ON (scalar_t__) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 TYPE_1__* current ;
 int wait_event (int ,int) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

void btrfs_tree_lock(struct extent_buffer *eb)
{
again:
 wait_event(eb->read_lock_wq, atomic_read(&eb->blocking_readers) == 0);
 wait_event(eb->write_lock_wq, atomic_read(&eb->blocking_writers) == 0);
 write_lock(&eb->lock);
 if (atomic_read(&eb->blocking_readers)) {
  write_unlock(&eb->lock);
  wait_event(eb->read_lock_wq,
      atomic_read(&eb->blocking_readers) == 0);
  goto again;
 }
 if (atomic_read(&eb->blocking_writers)) {
  write_unlock(&eb->lock);
  wait_event(eb->write_lock_wq,
      atomic_read(&eb->blocking_writers) == 0);
  goto again;
 }
 WARN_ON(atomic_read(&eb->spinning_writers));
 atomic_inc(&eb->spinning_writers);
 atomic_inc(&eb->write_locks);
 eb->lock_owner = current->pid;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct extent_buffer {int lock_owner; int spinning_writers; int write_locks; int lock; int blocking_readers; int blocking_writers; } ;
struct TYPE_2__ {int pid; } ;


 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 TYPE_1__* current ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

int btrfs_try_tree_write_lock(struct extent_buffer *eb)
{
 if (atomic_read(&eb->blocking_writers) ||
     atomic_read(&eb->blocking_readers))
  return 0;
 write_lock(&eb->lock);
 if (atomic_read(&eb->blocking_writers) ||
     atomic_read(&eb->blocking_readers)) {
  write_unlock(&eb->lock);
  return 0;
 }
 atomic_inc(&eb->write_locks);
 atomic_inc(&eb->spinning_writers);
 eb->lock_owner = current->pid;
 return 1;
}

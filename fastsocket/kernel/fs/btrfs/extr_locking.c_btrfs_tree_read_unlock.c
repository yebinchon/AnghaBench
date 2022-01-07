
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct extent_buffer {scalar_t__ lock_owner; int lock; int read_locks; int spinning_readers; scalar_t__ lock_nested; } ;
struct TYPE_2__ {scalar_t__ pid; } ;


 int WARN_ON (int) ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 int btrfs_assert_tree_read_locked (struct extent_buffer*) ;
 TYPE_1__* current ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

void btrfs_tree_read_unlock(struct extent_buffer *eb)
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
 WARN_ON(atomic_read(&eb->spinning_readers) == 0);
 atomic_dec(&eb->spinning_readers);
 atomic_dec(&eb->read_locks);
 read_unlock(&eb->lock);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_buffer {int spinning_readers; int read_locks; int lock; int blocking_writers; } ;


 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

int btrfs_try_tree_read_lock(struct extent_buffer *eb)
{
 if (atomic_read(&eb->blocking_writers))
  return 0;

 read_lock(&eb->lock);
 if (atomic_read(&eb->blocking_writers)) {
  read_unlock(&eb->lock);
  return 0;
 }
 atomic_inc(&eb->read_locks);
 atomic_inc(&eb->spinning_readers);
 return 1;
}

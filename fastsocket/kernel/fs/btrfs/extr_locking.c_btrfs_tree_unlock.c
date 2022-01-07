
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_buffer {int lock; int spinning_writers; int write_lock_wq; int blocking_writers; int write_locks; } ;


 int BUG_ON (int) ;
 int WARN_ON (int) ;
 int atomic_dec (int *) ;
 int atomic_read (int *) ;
 int btrfs_assert_tree_locked (struct extent_buffer*) ;
 int smp_wmb () ;
 int wake_up (int *) ;
 int write_unlock (int *) ;

void btrfs_tree_unlock(struct extent_buffer *eb)
{
 int blockers = atomic_read(&eb->blocking_writers);

 BUG_ON(blockers > 1);

 btrfs_assert_tree_locked(eb);
 atomic_dec(&eb->write_locks);

 if (blockers) {
  WARN_ON(atomic_read(&eb->spinning_writers));
  atomic_dec(&eb->blocking_writers);
  smp_wmb();
  wake_up(&eb->write_lock_wq);
 } else {
  WARN_ON(atomic_read(&eb->spinning_writers) != 1);
  atomic_dec(&eb->spinning_writers);
  write_unlock(&eb->lock);
 }
}

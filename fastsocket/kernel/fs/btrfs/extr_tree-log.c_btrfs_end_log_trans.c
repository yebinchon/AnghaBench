
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_root {int log_writer_wait; int log_writers; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int smp_mb () ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up (int *) ;

void btrfs_end_log_trans(struct btrfs_root *root)
{
 if (atomic_dec_and_test(&root->log_writers)) {
  smp_mb();
  if (waitqueue_active(&root->log_writer_wait))
   wake_up(&root->log_writer_wait);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_worker_thread {int refs; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int kfree (struct btrfs_worker_thread*) ;

__attribute__((used)) static void put_worker(struct btrfs_worker_thread *worker)
{
 if (atomic_dec_and_test(&worker->refs))
  kfree(worker);
}

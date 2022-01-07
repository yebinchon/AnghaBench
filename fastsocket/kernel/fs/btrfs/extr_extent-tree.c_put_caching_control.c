
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_caching_control {int count; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int kfree (struct btrfs_caching_control*) ;

__attribute__((used)) static void put_caching_control(struct btrfs_caching_control *ctl)
{
 if (atomic_dec_and_test(&ctl->count))
  kfree(ctl);
}

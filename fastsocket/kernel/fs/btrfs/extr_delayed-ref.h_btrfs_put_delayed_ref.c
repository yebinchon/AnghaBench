
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_delayed_ref_node {int in_tree; int refs; } ;


 int WARN_ON (int) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 scalar_t__ atomic_read (int *) ;
 int kfree (struct btrfs_delayed_ref_node*) ;

__attribute__((used)) static inline void btrfs_put_delayed_ref(struct btrfs_delayed_ref_node *ref)
{
 WARN_ON(atomic_read(&ref->refs) == 0);
 if (atomic_dec_and_test(&ref->refs)) {
  WARN_ON(ref->in_tree);
  kfree(ref);
 }
}

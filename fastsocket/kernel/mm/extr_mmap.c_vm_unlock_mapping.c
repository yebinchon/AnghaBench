
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct address_space {int flags; int i_mmap_lock; } ;


 int AS_MM_ALL_LOCKS ;
 int BUG () ;
 int spin_unlock (int *) ;
 int test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void vm_unlock_mapping(struct address_space *mapping)
{
 if (test_bit(AS_MM_ALL_LOCKS, &mapping->flags)) {




  spin_unlock(&mapping->i_mmap_lock);
  if (!test_and_clear_bit(AS_MM_ALL_LOCKS,
     &mapping->flags))
   BUG();
 }
}

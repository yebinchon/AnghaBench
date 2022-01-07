
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int mmap_sem; } ;
struct address_space {int i_mmap_lock; int flags; } ;


 int AS_MM_ALL_LOCKS ;
 int BUG () ;
 int spin_lock_nest_lock (int *,int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void vm_lock_mapping(struct mm_struct *mm, struct address_space *mapping)
{
 if (!test_bit(AS_MM_ALL_LOCKS, &mapping->flags)) {
  if (test_and_set_bit(AS_MM_ALL_LOCKS, &mapping->flags))
   BUG();
  spin_lock_nest_lock(&mapping->i_mmap_lock, &mm->mmap_sem);
 }
}

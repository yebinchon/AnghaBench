
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mm_struct {int mmap_sem; } ;
struct anon_vma {TYPE_2__* root; } ;
struct TYPE_3__ {int next; } ;
struct TYPE_4__ {TYPE_1__ head; int lock; } ;


 int BUG () ;
 scalar_t__ __test_and_set_bit (int ,unsigned long*) ;
 int spin_lock_nest_lock (int *,int *) ;
 int test_bit (int ,unsigned long*) ;

__attribute__((used)) static void vm_lock_anon_vma(struct mm_struct *mm, struct anon_vma *anon_vma)
{
 if (!test_bit(0, (unsigned long *) &anon_vma->root->head.next)) {




  spin_lock_nest_lock(&anon_vma->root->lock, &mm->mmap_sem);
  if (__test_and_set_bit(0, (unsigned long *)
           &anon_vma->root->head.next))
   BUG();
 }
}

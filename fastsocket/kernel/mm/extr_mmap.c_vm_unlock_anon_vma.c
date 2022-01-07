
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct anon_vma {TYPE_2__* root; } ;
struct TYPE_3__ {int next; } ;
struct TYPE_4__ {TYPE_1__ head; } ;


 int BUG () ;
 int __test_and_clear_bit (int ,unsigned long*) ;
 int anon_vma_unlock (struct anon_vma*) ;
 scalar_t__ test_bit (int ,unsigned long*) ;

__attribute__((used)) static void vm_unlock_anon_vma(struct anon_vma *anon_vma)
{
 if (test_bit(0, (unsigned long *) &anon_vma->root->head.next)) {
  if (!__test_and_clear_bit(0, (unsigned long *)
       &anon_vma->root->head.next))
   BUG();
  anon_vma_unlock(anon_vma);
 }
}

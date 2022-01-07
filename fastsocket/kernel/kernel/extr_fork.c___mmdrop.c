
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int pmd_huge_pte; } ;


 int BUG_ON (int) ;
 int VM_BUG_ON (int ) ;
 int destroy_context (struct mm_struct*) ;
 int free_mm (struct mm_struct*) ;
 struct mm_struct init_mm ;
 int mm_free_pgd (struct mm_struct*) ;
 int mmu_notifier_mm_destroy (struct mm_struct*) ;

void __mmdrop(struct mm_struct *mm)
{
 BUG_ON(mm == &init_mm);
 mm_free_pgd(mm);
 destroy_context(mm);
 mmu_notifier_mm_destroy(mm);



 free_mm(mm);
}

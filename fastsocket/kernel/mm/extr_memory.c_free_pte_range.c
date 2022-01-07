
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmu_gather {TYPE_1__* mm; } ;
typedef int pmd_t ;
typedef int pgtable_t ;
struct TYPE_2__ {int nr_ptes; } ;


 int pmd_clear (int *) ;
 int pmd_pgtable (int ) ;
 int pte_free_tlb (struct mmu_gather*,int ,unsigned long) ;

__attribute__((used)) static void free_pte_range(struct mmu_gather *tlb, pmd_t *pmd,
      unsigned long addr)
{
 pgtable_t token = pmd_pgtable(*pmd);
 pmd_clear(pmd);
 pte_free_tlb(tlb, token, addr);
 tlb->mm->nr_ptes--;
}

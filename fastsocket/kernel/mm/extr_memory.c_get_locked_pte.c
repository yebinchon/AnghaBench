
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int spinlock_t ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 int VM_BUG_ON (int ) ;
 int * pgd_offset (struct mm_struct*,unsigned long) ;
 int * pmd_alloc (struct mm_struct*,int *,unsigned long) ;
 int pmd_trans_huge (int ) ;
 int * pte_alloc_map_lock (struct mm_struct*,int *,unsigned long,int **) ;
 int * pud_alloc (struct mm_struct*,int *,unsigned long) ;

pte_t *get_locked_pte(struct mm_struct *mm, unsigned long addr,
   spinlock_t **ptl)
{
 pgd_t * pgd = pgd_offset(mm, addr);
 pud_t * pud = pud_alloc(mm, pgd, addr);
 if (pud) {
  pmd_t * pmd = pmd_alloc(mm, pud, addr);
  if (pmd) {
   VM_BUG_ON(pmd_trans_huge(*pmd));
   return pte_alloc_map_lock(mm, pmd, addr, ptl);
  }
 }
 return ((void*)0);
}

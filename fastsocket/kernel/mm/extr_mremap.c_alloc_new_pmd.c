
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef int pud_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 int VM_BUG_ON (int ) ;
 int * pgd_offset (struct mm_struct*,unsigned long) ;
 int * pmd_alloc (struct mm_struct*,int *,unsigned long) ;
 int pmd_trans_huge (int ) ;
 int * pud_alloc (struct mm_struct*,int *,unsigned long) ;

__attribute__((used)) static pmd_t *alloc_new_pmd(struct mm_struct *mm, struct vm_area_struct *vma,
       unsigned long addr)
{
 pgd_t *pgd;
 pud_t *pud;
 pmd_t *pmd;

 pgd = pgd_offset(mm, addr);
 pud = pud_alloc(mm, pgd, addr);
 if (!pud)
  return ((void*)0);

 pmd = pmd_alloc(mm, pud, addr);
 if (!pmd)
  return ((void*)0);

 VM_BUG_ON(pmd_trans_huge(*pmd));

 return pmd;
}

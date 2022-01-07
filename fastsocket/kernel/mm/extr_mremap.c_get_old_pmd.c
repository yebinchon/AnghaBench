
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pud_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 scalar_t__ pgd_none_or_clear_bad (int *) ;
 int * pgd_offset (struct mm_struct*,unsigned long) ;
 scalar_t__ pmd_none (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 scalar_t__ pud_none_or_clear_bad (int *) ;
 int * pud_offset (int *,unsigned long) ;

__attribute__((used)) static pmd_t *get_old_pmd(struct mm_struct *mm, unsigned long addr)
{
 pgd_t *pgd;
 pud_t *pud;
 pmd_t *pmd;

 pgd = pgd_offset(mm, addr);
 if (pgd_none_or_clear_bad(pgd))
  return ((void*)0);

 pud = pud_offset(pgd, addr);
 if (pud_none_or_clear_bad(pud))
  return ((void*)0);

 pmd = pmd_offset(pud, addr);
 if (pmd_none(*pmd))
  return ((void*)0);

 return pmd;
}

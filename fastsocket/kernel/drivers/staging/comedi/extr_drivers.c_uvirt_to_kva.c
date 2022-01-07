
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 int PAGE_SIZE ;
 scalar_t__ page_address (int ) ;
 int pgd_none (int ) ;
 int pmd_none (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 int * pte_offset_kernel (int *,unsigned long) ;
 int pte_page (int ) ;
 scalar_t__ pte_present (int ) ;
 int * pud_offset (int *,unsigned long) ;

__attribute__((used)) static inline unsigned long uvirt_to_kva(pgd_t * pgd, unsigned long adr)
{
 unsigned long ret = 0UL;
 pmd_t *pmd;
 pte_t *ptep, pte;
 pud_t *pud;

 if (!pgd_none(*pgd)) {
  pud = pud_offset(pgd, adr);
  pmd = pmd_offset(pud, adr);
  if (!pmd_none(*pmd)) {
   ptep = pte_offset_kernel(pmd, adr);
   pte = *ptep;
   if (pte_present(pte)) {
    ret = (unsigned long)
        page_address(pte_page(pte));
    ret |= (adr & (PAGE_SIZE - 1));
   }
  }
 }
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 int VIRTUAL_BUG_ON (int) ;
 int is_vmalloc_or_module_addr (void const*) ;
 int pgd_none (int ) ;
 int * pgd_offset_k (unsigned long) ;
 int pmd_none (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 int * pte_offset_map (int *,unsigned long) ;
 struct page* pte_page (int ) ;
 scalar_t__ pte_present (int ) ;
 int pte_unmap (int *) ;
 int pud_none (int ) ;
 int * pud_offset (int *,unsigned long) ;

struct page *vmalloc_to_page(const void *vmalloc_addr)
{
 unsigned long addr = (unsigned long) vmalloc_addr;
 struct page *page = ((void*)0);
 pgd_t *pgd = pgd_offset_k(addr);





 VIRTUAL_BUG_ON(!is_vmalloc_or_module_addr(vmalloc_addr));

 if (!pgd_none(*pgd)) {
  pud_t *pud = pud_offset(pgd, addr);
  if (!pud_none(*pud)) {
   pmd_t *pmd = pmd_offset(pud, addr);
   if (!pmd_none(*pmd)) {
    pte_t *ptep, pte;

    ptep = pte_offset_map(pmd, addr);
    pte = *ptep;
    if (pte_present(pte))
     page = pte_page(pte);
    pte_unmap(ptep);
   }
  }
 }
 return page;
}

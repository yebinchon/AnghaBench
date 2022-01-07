
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef int pmd_t ;


 unsigned long pmd_addr_end (unsigned long,unsigned long) ;
 scalar_t__ pmd_none_or_clear_bad (int *) ;
 int * pmd_offset (int *,unsigned long) ;
 int vunmap_pte_range (int *,unsigned long,unsigned long) ;

__attribute__((used)) static void vunmap_pmd_range(pud_t *pud, unsigned long addr, unsigned long end)
{
 pmd_t *pmd;
 unsigned long next;

 pmd = pmd_offset(pud, addr);
 do {
  next = pmd_addr_end(addr, end);
  if (pmd_none_or_clear_bad(pmd))
   continue;
  vunmap_pte_range(pmd, addr, next);
 } while (pmd++, addr = next, addr != end);
}

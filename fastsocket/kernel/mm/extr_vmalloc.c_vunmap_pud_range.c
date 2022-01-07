
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef int pgd_t ;


 unsigned long pud_addr_end (unsigned long,unsigned long) ;
 scalar_t__ pud_none_or_clear_bad (int *) ;
 int * pud_offset (int *,unsigned long) ;
 int vunmap_pmd_range (int *,unsigned long,unsigned long) ;

__attribute__((used)) static void vunmap_pud_range(pgd_t *pgd, unsigned long addr, unsigned long end)
{
 pud_t *pud;
 unsigned long next;

 pud = pud_offset(pgd, addr);
 do {
  next = pud_addr_end(addr, end);
  if (pud_none_or_clear_bad(pud))
   continue;
  vunmap_pmd_range(pud, addr, next);
 } while (pud++, addr = next, addr != end);
}

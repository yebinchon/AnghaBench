
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
typedef int pud_t ;
typedef int pgd_t ;


 unsigned long PAGE_SHIFT ;
 int mincore_pmd_range (struct vm_area_struct*,int *,unsigned long,unsigned long,unsigned char*) ;
 int mincore_unmapped_range (struct vm_area_struct*,unsigned long,unsigned long,unsigned char*) ;
 unsigned long pud_addr_end (unsigned long,unsigned long) ;
 scalar_t__ pud_none_or_clear_bad (int *) ;
 int * pud_offset (int *,unsigned long) ;

__attribute__((used)) static void mincore_pud_range(struct vm_area_struct *vma, pgd_t *pgd,
   unsigned long addr, unsigned long end,
   unsigned char *vec)
{
 unsigned long next;
 pud_t *pud;

 pud = pud_offset(pgd, addr);
 do {
  next = pud_addr_end(addr, end);
  if (pud_none_or_clear_bad(pud))
   mincore_unmapped_range(vma, addr, next, vec);
  else
   mincore_pmd_range(vma, pud, addr, next, vec);
  vec += (next - addr) >> PAGE_SHIFT;
 } while (pud++, addr = next, addr != end);
}

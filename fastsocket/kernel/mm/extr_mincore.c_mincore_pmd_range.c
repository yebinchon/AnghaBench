
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
typedef int pud_t ;
typedef int pmd_t ;


 unsigned long PAGE_SHIFT ;
 scalar_t__ mincore_huge_pmd (struct vm_area_struct*,int *,unsigned long,unsigned long,unsigned char*) ;
 int mincore_pte_range (struct vm_area_struct*,int *,unsigned long,unsigned long,unsigned char*) ;
 int mincore_unmapped_range (struct vm_area_struct*,unsigned long,unsigned long,unsigned char*) ;
 unsigned long pmd_addr_end (unsigned long,unsigned long) ;
 scalar_t__ pmd_none_or_trans_huge_or_clear_bad (int *) ;
 int * pmd_offset (int *,unsigned long) ;
 scalar_t__ pmd_trans_huge (int ) ;

__attribute__((used)) static void mincore_pmd_range(struct vm_area_struct *vma, pud_t *pud,
   unsigned long addr, unsigned long end,
   unsigned char *vec)
{
 unsigned long next;
 pmd_t *pmd;

 pmd = pmd_offset(pud, addr);
 do {
  next = pmd_addr_end(addr, end);
  if (pmd_trans_huge(*pmd)) {
   if (mincore_huge_pmd(vma, pmd, addr, next, vec)) {
    vec += (next - addr) >> PAGE_SHIFT;
    continue;
   }

  }
  if (pmd_none_or_trans_huge_or_clear_bad(pmd))
   mincore_unmapped_range(vma, addr, next, vec);
  else
   mincore_pte_range(vma, pmd, addr, next, vec);
  vec += (next - addr) >> PAGE_SHIFT;
 } while (pmd++, addr = next, addr != end);
}

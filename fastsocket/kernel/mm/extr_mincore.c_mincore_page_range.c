
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_mm; } ;
typedef int pgd_t ;


 unsigned long PAGE_SHIFT ;
 int mincore_pud_range (struct vm_area_struct*,int *,unsigned long,unsigned long,unsigned char*) ;
 int mincore_unmapped_range (struct vm_area_struct*,unsigned long,unsigned long,unsigned char*) ;
 unsigned long pgd_addr_end (unsigned long,unsigned long) ;
 scalar_t__ pgd_none_or_clear_bad (int *) ;
 int * pgd_offset (int ,unsigned long) ;

__attribute__((used)) static void mincore_page_range(struct vm_area_struct *vma,
   unsigned long addr, unsigned long end,
   unsigned char *vec)
{
 unsigned long next;
 pgd_t *pgd;

 pgd = pgd_offset(vma->vm_mm, addr);
 do {
  next = pgd_addr_end(addr, end);
  if (pgd_none_or_clear_bad(pgd))
   mincore_unmapped_range(vma, addr, next, vec);
  else
   mincore_pud_range(vma, pgd, addr, next, vec);
  vec += (next - addr) >> PAGE_SHIFT;
 } while (pgd++, addr = next, addr != end);
}

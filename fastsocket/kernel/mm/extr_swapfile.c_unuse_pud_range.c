
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;
struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;
typedef int pud_t ;
typedef int pgd_t ;


 unsigned long pud_addr_end (unsigned long,unsigned long) ;
 scalar_t__ pud_none_or_clear_bad (int *) ;
 int * pud_offset (int *,unsigned long) ;
 int unuse_pmd_range (struct vm_area_struct*,int *,unsigned long,unsigned long,int ,struct page*) ;

__attribute__((used)) static inline int unuse_pud_range(struct vm_area_struct *vma, pgd_t *pgd,
    unsigned long addr, unsigned long end,
    swp_entry_t entry, struct page *page)
{
 pud_t *pud;
 unsigned long next;
 int ret;

 pud = pud_offset(pgd, addr);
 do {
  next = pud_addr_end(addr, end);
  if (pud_none_or_clear_bad(pud))
   continue;
  ret = unuse_pmd_range(vma, pud, addr, next, entry, page);
  if (ret)
   return ret;
 } while (pud++, addr = next, addr != end);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;
struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;
typedef int pud_t ;
typedef int pmd_t ;


 unsigned long pmd_addr_end (unsigned long,unsigned long) ;
 scalar_t__ pmd_none_or_trans_huge_or_clear_bad (int *) ;
 int * pmd_offset (int *,unsigned long) ;
 int unuse_pte_range (struct vm_area_struct*,int *,unsigned long,unsigned long,int ,struct page*) ;

__attribute__((used)) static inline int unuse_pmd_range(struct vm_area_struct *vma, pud_t *pud,
    unsigned long addr, unsigned long end,
    swp_entry_t entry, struct page *page)
{
 pmd_t *pmd;
 unsigned long next;
 int ret;

 pmd = pmd_offset(pud, addr);
 do {
  next = pmd_addr_end(addr, end);
  if (pmd_none_or_trans_huge_or_clear_bad(pmd))
   continue;
  ret = unuse_pte_range(vma, pmd, addr, next, entry, page);
  if (ret)
   return ret;
 } while (pmd++, addr = next, addr != end);
 return 0;
}

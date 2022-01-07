
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_mm; } ;
typedef int pud_t ;
typedef int pmd_t ;
typedef int pgprot_t ;


 unsigned long HPAGE_PMD_SIZE ;
 scalar_t__ change_huge_pmd (struct vm_area_struct*,int *,unsigned long,int ) ;
 int change_pte_range (int ,int *,unsigned long,unsigned long,int ,int) ;
 unsigned long pmd_addr_end (unsigned long,unsigned long) ;
 scalar_t__ pmd_none_or_clear_bad (int *) ;
 int * pmd_offset (int *,unsigned long) ;
 scalar_t__ pmd_trans_huge (int ) ;
 int split_huge_page_pmd (int ,int *) ;

__attribute__((used)) static inline void change_pmd_range(struct vm_area_struct *vma, pud_t *pud,
  unsigned long addr, unsigned long end, pgprot_t newprot,
  int dirty_accountable)
{
 pmd_t *pmd;
 unsigned long next;

 pmd = pmd_offset(pud, addr);
 do {
  next = pmd_addr_end(addr, end);
  if (pmd_trans_huge(*pmd)) {
   if (next - addr != HPAGE_PMD_SIZE)
    split_huge_page_pmd(vma->vm_mm, pmd);
   else if (change_huge_pmd(vma, pmd, addr, newprot))
    continue;

  }
  if (pmd_none_or_clear_bad(pmd))
   continue;
  change_pte_range(vma->vm_mm, pmd, addr, next, newprot,
     dirty_accountable);
 } while (pmd++, addr = next, addr != end);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_mm; } ;
typedef int pud_t ;
typedef int pmd_t ;
typedef int nodemask_t ;


 int EIO ;
 scalar_t__ check_pte_range (struct vm_area_struct*,int *,unsigned long,unsigned long,int const*,unsigned long,void*) ;
 unsigned long pmd_addr_end (unsigned long,unsigned long) ;
 scalar_t__ pmd_none_or_trans_huge_or_clear_bad (int *) ;
 int * pmd_offset (int *,unsigned long) ;
 int split_huge_page_pmd (int ,int *) ;

__attribute__((used)) static inline int check_pmd_range(struct vm_area_struct *vma, pud_t *pud,
  unsigned long addr, unsigned long end,
  const nodemask_t *nodes, unsigned long flags,
  void *private)
{
 pmd_t *pmd;
 unsigned long next;

 pmd = pmd_offset(pud, addr);
 do {
  next = pmd_addr_end(addr, end);
  split_huge_page_pmd(vma->vm_mm, pmd);
  if (pmd_none_or_trans_huge_or_clear_bad(pmd))
   continue;
  if (check_pte_range(vma, pmd, addr, next, nodes,
        flags, private))
   return -EIO;
 } while (pmd++, addr = next, addr != end);
 return 0;
}

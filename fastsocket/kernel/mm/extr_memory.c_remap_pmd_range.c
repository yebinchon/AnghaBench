
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pud_t ;
typedef int pmd_t ;
typedef int pgprot_t ;


 int ENOMEM ;
 unsigned long PAGE_SHIFT ;
 int VM_BUG_ON (int ) ;
 unsigned long pmd_addr_end (unsigned long,unsigned long) ;
 int * pmd_alloc (struct mm_struct*,int *,unsigned long) ;
 int pmd_trans_huge (int ) ;
 scalar_t__ remap_pte_range (struct mm_struct*,int *,unsigned long,unsigned long,unsigned long,int ) ;

__attribute__((used)) static inline int remap_pmd_range(struct mm_struct *mm, pud_t *pud,
   unsigned long addr, unsigned long end,
   unsigned long pfn, pgprot_t prot)
{
 pmd_t *pmd;
 unsigned long next;

 pfn -= addr >> PAGE_SHIFT;
 pmd = pmd_alloc(mm, pud, addr);
 if (!pmd)
  return -ENOMEM;
 VM_BUG_ON(pmd_trans_huge(*pmd));
 do {
  next = pmd_addr_end(addr, end);
  if (remap_pte_range(mm, pmd, addr, next,
    pfn + (addr >> PAGE_SHIFT), prot))
   return -ENOMEM;
 } while (pmd++, addr = next, addr != end);
 return 0;
}

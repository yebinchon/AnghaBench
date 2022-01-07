
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zap_details {int dummy; } ;
struct vm_area_struct {int vm_mm; } ;
struct mmu_gather {TYPE_1__* mm; } ;
typedef int pud_t ;
typedef int pmd_t ;
struct TYPE_2__ {int mmap_sem; } ;


 unsigned long HPAGE_PMD_SIZE ;
 int VM_BUG_ON (int) ;
 unsigned long pmd_addr_end (unsigned long,unsigned long) ;
 scalar_t__ pmd_none_or_trans_huge_or_clear_bad (int *) ;
 int * pmd_offset (int *,unsigned long) ;
 scalar_t__ pmd_trans_huge (int ) ;
 int rwsem_is_locked (int *) ;
 int split_huge_page_pmd (int ,int *) ;
 scalar_t__ zap_huge_pmd (struct mmu_gather*,struct vm_area_struct*,int *) ;
 unsigned long zap_pte_range (struct mmu_gather*,struct vm_area_struct*,int *,unsigned long,unsigned long,long*,struct zap_details*) ;

__attribute__((used)) static inline unsigned long zap_pmd_range(struct mmu_gather *tlb,
    struct vm_area_struct *vma, pud_t *pud,
    unsigned long addr, unsigned long end,
    long *zap_work, struct zap_details *details)
{
 pmd_t *pmd;
 unsigned long next;

 pmd = pmd_offset(pud, addr);
 do {
  next = pmd_addr_end(addr, end);
  if (pmd_trans_huge(*pmd)) {
   if (next-addr != HPAGE_PMD_SIZE) {
    VM_BUG_ON(!rwsem_is_locked(&tlb->mm->mmap_sem));
    split_huge_page_pmd(vma->vm_mm, pmd);
   } else if (zap_huge_pmd(tlb, vma, pmd)) {
    (*zap_work)--;
    continue;
   }

  }







  if (pmd_none_or_trans_huge_or_clear_bad(pmd)) {
   (*zap_work)--;
   continue;
  }
  next = zap_pte_range(tlb, vma, pmd, addr, next,
      zap_work, details);
 } while (pmd++, addr = next, (addr != end && *zap_work > 0));

 return addr;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zap_details {int dummy; } ;
struct vm_area_struct {int dummy; } ;
struct mmu_gather {int dummy; } ;
typedef int pud_t ;
typedef int pgd_t ;


 unsigned long pud_addr_end (unsigned long,unsigned long) ;
 scalar_t__ pud_none_or_clear_bad (int *) ;
 int * pud_offset (int *,unsigned long) ;
 unsigned long zap_pmd_range (struct mmu_gather*,struct vm_area_struct*,int *,unsigned long,unsigned long,long*,struct zap_details*) ;

__attribute__((used)) static inline unsigned long zap_pud_range(struct mmu_gather *tlb,
    struct vm_area_struct *vma, pgd_t *pgd,
    unsigned long addr, unsigned long end,
    long *zap_work, struct zap_details *details)
{
 pud_t *pud;
 unsigned long next;

 pud = pud_offset(pgd, addr);
 do {
  next = pud_addr_end(addr, end);
  if (pud_none_or_clear_bad(pud)) {
   (*zap_work)--;
   continue;
  }
  next = zap_pmd_range(tlb, vma, pud, addr, next,
      zap_work, details);
 } while (pud++, addr = next, (addr != end && *zap_work > 0));

 return addr;
}

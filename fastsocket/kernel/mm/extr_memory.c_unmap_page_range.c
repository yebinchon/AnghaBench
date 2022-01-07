
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zap_details {int nonlinear_vma; int check_mapping; } ;
struct vm_area_struct {int vm_mm; } ;
struct mmu_gather {int dummy; } ;
typedef int pgd_t ;


 int BUG_ON (int) ;
 int mem_cgroup_uncharge_end () ;
 int mem_cgroup_uncharge_start () ;
 unsigned long pgd_addr_end (unsigned long,unsigned long) ;
 scalar_t__ pgd_none_or_clear_bad (int *) ;
 int * pgd_offset (int ,unsigned long) ;
 int tlb_end_vma (struct mmu_gather*,struct vm_area_struct*) ;
 int tlb_start_vma (struct mmu_gather*,struct vm_area_struct*) ;
 unsigned long zap_pud_range (struct mmu_gather*,struct vm_area_struct*,int *,unsigned long,unsigned long,long*,struct zap_details*) ;

__attribute__((used)) static unsigned long unmap_page_range(struct mmu_gather *tlb,
    struct vm_area_struct *vma,
    unsigned long addr, unsigned long end,
    long *zap_work, struct zap_details *details)
{
 pgd_t *pgd;
 unsigned long next;

 if (details && !details->check_mapping && !details->nonlinear_vma)
  details = ((void*)0);

 BUG_ON(addr >= end);
 mem_cgroup_uncharge_start();
 tlb_start_vma(tlb, vma);
 pgd = pgd_offset(vma->vm_mm, addr);
 do {
  next = pgd_addr_end(addr, end);
  if (pgd_none_or_clear_bad(pgd)) {
   (*zap_work)--;
   continue;
  }
  next = zap_pud_range(tlb, vma, pgd, addr, next,
      zap_work, details);
 } while (pgd++, addr = next, (addr != end && *zap_work > 0));
 tlb_end_vma(tlb, vma);
 mem_cgroup_uncharge_end();

 return addr;
}

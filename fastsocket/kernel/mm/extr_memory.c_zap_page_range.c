
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zap_details {int dummy; } ;
struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct mmu_gather {int dummy; } ;
struct mm_struct {int dummy; } ;


 int lru_add_drain () ;
 int tlb_finish_mmu (struct mmu_gather*,unsigned long,unsigned long) ;
 unsigned long unmap_vmas (struct mmu_gather**,struct vm_area_struct*,unsigned long,unsigned long,unsigned long*,struct zap_details*,int ) ;
 int update_hiwater_rss (struct mm_struct*) ;

unsigned long zap_page_range(struct vm_area_struct *vma, unsigned long address,
  unsigned long size, struct zap_details *details)
{
 struct mm_struct *mm = vma->vm_mm;
 struct mmu_gather *tlb;
 unsigned long end = address + size;
 unsigned long nr_accounted = 0;

 lru_add_drain();
 update_hiwater_rss(mm);
 end = unmap_vmas(&tlb, vma, address, end, &nr_accounted, details, 0);
 if (tlb)
  tlb_finish_mmu(tlb, address, end);
 return end;
}

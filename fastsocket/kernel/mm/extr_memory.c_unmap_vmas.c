
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zap_details {int * i_mmap_lock; } ;
struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; int vm_flags; struct mm_struct* vm_mm; scalar_t__ vm_file; struct vm_area_struct* vm_next; } ;
struct mmu_gather {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef int spinlock_t ;


 int BUG_ON (int) ;
 unsigned long PAGE_SHIFT ;
 int VM_ACCOUNT ;
 long ZAP_BLOCK_SIZE ;
 int cond_resched () ;
 int hstate_vma (struct vm_area_struct*) ;
 int is_pfn_mapping (struct vm_area_struct*) ;
 int is_vm_hugetlb_page (struct vm_area_struct*) ;
 unsigned long max (unsigned long,unsigned long) ;
 unsigned long min (unsigned long,unsigned long) ;
 int mmu_notifier_invalidate_range_end (struct mm_struct*,unsigned long,unsigned long) ;
 int mmu_notifier_invalidate_range_start (struct mm_struct*,unsigned long,unsigned long) ;
 scalar_t__ need_resched () ;
 unsigned long pages_per_huge_page (int ) ;
 scalar_t__ spin_needbreak (int *) ;
 int tlb_finish_mmu (struct mmu_gather*,unsigned long,unsigned long) ;
 struct mmu_gather* tlb_gather_mmu (struct mm_struct*,int) ;
 scalar_t__ unlikely (int ) ;
 int unmap_hugepage_range (struct vm_area_struct*,unsigned long,unsigned long,int *) ;
 unsigned long unmap_page_range (struct mmu_gather*,struct vm_area_struct*,unsigned long,unsigned long,long*,struct zap_details*) ;
 int untrack_pfn_vma (struct vm_area_struct*,int ,int ) ;

unsigned long unmap_vmas(struct mmu_gather **tlbp,
  struct vm_area_struct *vma, unsigned long start_addr,
  unsigned long end_addr, unsigned long *nr_accounted,
  struct zap_details *details, int fullmm)
{
 long zap_work = ZAP_BLOCK_SIZE;
 unsigned long tlb_start = 0;
 int tlb_start_valid = 0;
 unsigned long start = start_addr;
 spinlock_t *i_mmap_lock = details? details->i_mmap_lock: ((void*)0);
 struct mm_struct *mm = vma->vm_mm;





 mmu_notifier_invalidate_range_start(mm, start_addr, end_addr);
 *tlbp = tlb_gather_mmu(mm, fullmm);
 for ( ; vma && vma->vm_start < end_addr; vma = vma->vm_next) {
  unsigned long end;

  start = max(vma->vm_start, start_addr);
  if (start >= vma->vm_end)
   continue;
  end = min(vma->vm_end, end_addr);
  if (end <= vma->vm_start)
   continue;

  if (vma->vm_flags & VM_ACCOUNT)
   *nr_accounted += (end - start) >> PAGE_SHIFT;

  if (unlikely(is_pfn_mapping(vma)))
   untrack_pfn_vma(vma, 0, 0);

  while (start != end) {
   if (!tlb_start_valid) {
    tlb_start = start;
    tlb_start_valid = 1;
   }

   if (unlikely(is_vm_hugetlb_page(vma))) {
    if (vma->vm_file) {
     unmap_hugepage_range(vma, start, end, ((void*)0));
     zap_work -= (end - start) /
     pages_per_huge_page(hstate_vma(vma));
    }

    start = end;
   } else
    start = unmap_page_range(*tlbp, vma,
      start, end, &zap_work, details);

   if (zap_work > 0) {
    BUG_ON(start != end);
    break;
   }

   tlb_finish_mmu(*tlbp, tlb_start, start);

   if (need_resched() ||
    (i_mmap_lock && spin_needbreak(i_mmap_lock))) {
    if (i_mmap_lock) {
     *tlbp = ((void*)0);
     goto out;
    }
    cond_resched();
   }

   *tlbp = tlb_gather_mmu(vma->vm_mm, fullmm);
   tlb_start_valid = 0;
   zap_work = ZAP_BLOCK_SIZE;
  }
 }
out:
 mmu_notifier_invalidate_range_end(mm, start_addr, end_addr);
 return start;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; struct vm_area_struct* vm_next; } ;
struct mmu_gather {int dummy; } ;
struct mm_struct {int nr_ptes; struct vm_area_struct* mmap; scalar_t__ locked_vm; } ;


 int BUG_ON (int) ;
 int FIRST_USER_ADDRESS ;
 int PMD_SHIFT ;
 int PMD_SIZE ;
 int VM_LOCKED ;
 int arch_exit_mmap (struct mm_struct*) ;
 int arch_flush_exec_range (struct mm_struct*) ;
 int flush_cache_mm (struct mm_struct*) ;
 int free_pgtables (struct mmu_gather*,struct vm_area_struct*,int,int ) ;
 int lru_add_drain () ;
 int mmu_notifier_release (struct mm_struct*) ;
 int munlock_vma_pages_all (struct vm_area_struct*) ;
 struct vm_area_struct* remove_vma (struct vm_area_struct*) ;
 int tlb_finish_mmu (struct mmu_gather*,int ,unsigned long) ;
 unsigned long unmap_vmas (struct mmu_gather**,struct vm_area_struct*,int ,int,unsigned long*,int *,int) ;
 int vm_unacct_memory (unsigned long) ;

void exit_mmap(struct mm_struct *mm)
{
 struct mmu_gather *tlb;
 struct vm_area_struct *vma;
 unsigned long nr_accounted = 0;
 unsigned long end;


 mmu_notifier_release(mm);

 if (mm->locked_vm) {
  vma = mm->mmap;
  while (vma) {
   if (vma->vm_flags & VM_LOCKED)
    munlock_vma_pages_all(vma);
   vma = vma->vm_next;
  }
 }

 arch_exit_mmap(mm);

 vma = mm->mmap;
 if (!vma)
  return;

 lru_add_drain();
 flush_cache_mm(mm);


 end = unmap_vmas(&tlb, vma, 0, -1, &nr_accounted, ((void*)0), 1);
 vm_unacct_memory(nr_accounted);

 free_pgtables(tlb, vma, FIRST_USER_ADDRESS, 0);
 tlb_finish_mmu(tlb, 0, end);
 arch_flush_exec_range(mm);





 while (vma)
  vma = remove_vma(vma);

 BUG_ON(mm->nr_ptes > (FIRST_USER_ADDRESS+PMD_SIZE-1)>>PMD_SHIFT);
}

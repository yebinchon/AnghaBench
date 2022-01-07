
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_start; int vm_end; struct vm_area_struct* vm_next; } ;
struct mmu_gather {int dummy; } ;
struct mm_struct {struct vm_area_struct* mmap; } ;


 int FIRST_USER_ADDRESS ;
 int free_pgtables (struct mmu_gather*,struct vm_area_struct*,int ,int ) ;
 int lru_add_drain () ;
 int tlb_finish_mmu (struct mmu_gather*,unsigned long,unsigned long) ;
 int unmap_vmas (struct mmu_gather**,struct vm_area_struct*,unsigned long,unsigned long,unsigned long*,int *,int ) ;
 int update_hiwater_rss (struct mm_struct*) ;
 int vm_unacct_memory (unsigned long) ;

__attribute__((used)) static void unmap_region(struct mm_struct *mm,
  struct vm_area_struct *vma, struct vm_area_struct *prev,
  unsigned long start, unsigned long end)
{
 struct vm_area_struct *next = prev? prev->vm_next: mm->mmap;
 struct mmu_gather *tlb;
 unsigned long nr_accounted = 0;

 lru_add_drain();
 update_hiwater_rss(mm);
 unmap_vmas(&tlb, vma, start, end, &nr_accounted, ((void*)0), 0);
 vm_unacct_memory(nr_accounted);
 free_pgtables(tlb, vma, prev? prev->vm_end: FIRST_USER_ADDRESS,
     next? next->vm_start: 0);
 tlb_finish_mmu(tlb, start, end);
}

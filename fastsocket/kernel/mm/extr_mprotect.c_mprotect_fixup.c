
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_flags; unsigned long vm_end; unsigned long vm_start; int vm_file; int vm_page_prot; int anon_vma; scalar_t__ vm_pgoff; struct mm_struct* vm_mm; } ;
struct mm_struct {int dummy; } ;
typedef scalar_t__ pgoff_t ;
struct TYPE_2__ {int mm; } ;


 int ENOMEM ;
 unsigned long PAGE_SHIFT ;
 unsigned long VM_ACCOUNT ;
 unsigned long VM_EXEC ;
 unsigned long VM_HUGETLB ;
 unsigned long VM_NORESERVE ;
 unsigned long VM_SHARED ;
 unsigned long VM_WRITE ;
 int arch_remove_exec_range (int ,unsigned long) ;
 int change_protection (struct vm_area_struct*,unsigned long,unsigned long,int ,int) ;
 TYPE_1__* current ;
 int hugetlb_change_protection (struct vm_area_struct*,unsigned long,unsigned long,int ) ;
 scalar_t__ is_vm_hugetlb_page (struct vm_area_struct*) ;
 int mmu_notifier_invalidate_range_end (struct mm_struct*,unsigned long,unsigned long) ;
 int mmu_notifier_invalidate_range_start (struct mm_struct*,unsigned long,unsigned long) ;
 int perf_event_mmap (struct vm_area_struct*) ;
 int pgprot_modify (int ,int ) ;
 scalar_t__ security_vm_enough_memory (unsigned long) ;
 int split_vma (struct mm_struct*,struct vm_area_struct*,unsigned long,int) ;
 int vm_get_page_prot (unsigned long) ;
 int vm_stat_account (struct mm_struct*,unsigned long,int ,long) ;
 int vm_unacct_memory (unsigned long) ;
 struct vm_area_struct* vma_merge (struct mm_struct*,struct vm_area_struct*,unsigned long,unsigned long,unsigned long,int ,int ,scalar_t__,int ) ;
 int vma_policy (struct vm_area_struct*) ;
 scalar_t__ vma_wants_writenotify (struct vm_area_struct*) ;

int
mprotect_fixup(struct vm_area_struct *vma, struct vm_area_struct **pprev,
 unsigned long start, unsigned long end, unsigned long newflags)
{
 struct mm_struct *mm = vma->vm_mm;
 unsigned long oldflags = vma->vm_flags;
 long nrpages = (end - start) >> PAGE_SHIFT;
 unsigned long charged = 0;
 unsigned long old_end;
 pgoff_t pgoff;
 int error;
 int dirty_accountable = 0;

 old_end = vma->vm_end;
 if (newflags == oldflags) {
  *pprev = vma;
  return 0;
 }







 if (newflags & VM_WRITE) {
  if (!(oldflags & (VM_ACCOUNT|VM_WRITE|VM_HUGETLB|
      VM_SHARED|VM_NORESERVE))) {
   charged = nrpages;
   if (security_vm_enough_memory(charged))
    return -ENOMEM;
   newflags |= VM_ACCOUNT;
  }
 }




 pgoff = vma->vm_pgoff + ((start - vma->vm_start) >> PAGE_SHIFT);
 *pprev = vma_merge(mm, *pprev, start, end, newflags,
   vma->anon_vma, vma->vm_file, pgoff, vma_policy(vma));
 if (*pprev) {
  vma = *pprev;
  goto success;
 }

 *pprev = vma;

 if (start != vma->vm_start) {
  error = split_vma(mm, vma, start, 1);
  if (error)
   goto fail;
 }

 if (end != vma->vm_end) {
  error = split_vma(mm, vma, end, 0);
  if (error)
   goto fail;
 }

success:




 vma->vm_flags = newflags;
 vma->vm_page_prot = pgprot_modify(vma->vm_page_prot,
       vm_get_page_prot(newflags));

 if (vma_wants_writenotify(vma)) {
  vma->vm_page_prot = vm_get_page_prot(newflags & ~VM_SHARED);
  dirty_accountable = 1;
 }

 if (oldflags & VM_EXEC)
  arch_remove_exec_range(current->mm, old_end);

 mmu_notifier_invalidate_range_start(mm, start, end);
 if (is_vm_hugetlb_page(vma))
  hugetlb_change_protection(vma, start, end, vma->vm_page_prot);
 else
  change_protection(vma, start, end, vma->vm_page_prot, dirty_accountable);
 mmu_notifier_invalidate_range_end(mm, start, end);
 vm_stat_account(mm, oldflags, vma->vm_file, -nrpages);
 vm_stat_account(mm, newflags, vma->vm_file, nrpages);
 perf_event_mmap(vma);
 return 0;

fail:
 vm_unacct_memory(charged);
 return error;
}

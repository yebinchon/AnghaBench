
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; unsigned long vm_pgoff; } ;


 int ENOMEM ;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 int acct_stack_growth (struct vm_area_struct*,unsigned long,unsigned long) ;
 int anon_vma_prepare (struct vm_area_struct*) ;
 int khugepaged_enter_vma_merge (struct vm_area_struct*) ;
 int perf_event_mmap (struct vm_area_struct*) ;
 int security_file_mmap (int *,int ,int ,int ,unsigned long,int) ;
 scalar_t__ unlikely (int ) ;
 int vma_lock_anon_vma (struct vm_area_struct*) ;
 int vma_unlock_anon_vma (struct vm_area_struct*) ;

__attribute__((used)) static int expand_downwards(struct vm_area_struct *vma,
       unsigned long address)
{
 int error;





 if (unlikely(anon_vma_prepare(vma)))
  return -ENOMEM;

 address &= PAGE_MASK;
 error = security_file_mmap(((void*)0), 0, 0, 0, address, 1);
 if (error)
  return error;

 vma_lock_anon_vma(vma);
 if (address < vma->vm_start) {
  unsigned long size, grow;

  size = vma->vm_end - address;
  grow = (vma->vm_start - address) >> PAGE_SHIFT;

  error = -ENOMEM;
  if (grow <= vma->vm_pgoff) {
   error = acct_stack_growth(vma, size, grow);
   if (!error) {
    vma->vm_start = address;
    vma->vm_pgoff -= grow;
    perf_event_mmap(vma);
   }
  }
 }
 vma_unlock_anon_vma(vma);
 khugepaged_enter_vma_merge(vma);
 return error;
}

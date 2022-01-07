
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {unsigned int vm_flags; unsigned long vm_start; unsigned long vm_end; int vm_file; int anon_vma; scalar_t__ vm_pgoff; struct mm_struct* vm_mm; } ;
struct mm_struct {int locked_vm; } ;
typedef scalar_t__ pgoff_t ;
struct TYPE_2__ {int mm; } ;


 unsigned long PAGE_SHIFT ;
 int VM_DONTEXPAND ;
 int VM_IO ;
 unsigned int VM_LOCKED ;
 int VM_PFNMAP ;
 int VM_RESERVED ;
 int __mlock_posix_error_return (int) ;
 int __mlock_vma_pages_range (struct vm_area_struct*,unsigned long,unsigned long) ;
 TYPE_1__* current ;
 struct vm_area_struct* get_gate_vma (int ) ;
 scalar_t__ is_vm_hugetlb_page (struct vm_area_struct*) ;
 int make_pages_present (unsigned long,unsigned long) ;
 int munlock_vma_pages_range (struct vm_area_struct*,unsigned long,unsigned long) ;
 int split_vma (struct mm_struct*,struct vm_area_struct*,unsigned long,int) ;
 struct vm_area_struct* vma_merge (struct mm_struct*,struct vm_area_struct*,unsigned long,unsigned long,unsigned int,int ,int ,scalar_t__,int ) ;
 int vma_policy (struct vm_area_struct*) ;

__attribute__((used)) static int mlock_fixup(struct vm_area_struct *vma, struct vm_area_struct **prev,
 unsigned long start, unsigned long end, unsigned int newflags)
{
 struct mm_struct *mm = vma->vm_mm;
 pgoff_t pgoff;
 int nr_pages;
 int ret = 0;
 int lock = newflags & VM_LOCKED;

 if (newflags == vma->vm_flags ||
   (vma->vm_flags & (VM_IO | VM_PFNMAP)))
  goto out;

 if ((vma->vm_flags & (VM_DONTEXPAND | VM_RESERVED)) ||
   is_vm_hugetlb_page(vma) ||
   vma == get_gate_vma(current->mm)) {
  if (lock)
   make_pages_present(start, end);
  goto out;
 }

 pgoff = vma->vm_pgoff + ((start - vma->vm_start) >> PAGE_SHIFT);
 *prev = vma_merge(mm, *prev, start, end, newflags, vma->anon_vma,
     vma->vm_file, pgoff, vma_policy(vma));
 if (*prev) {
  vma = *prev;
  goto success;
 }

 if (start != vma->vm_start) {
  ret = split_vma(mm, vma, start, 1);
  if (ret)
   goto out;
 }

 if (end != vma->vm_end) {
  ret = split_vma(mm, vma, end, 0);
  if (ret)
   goto out;
 }

success:



 nr_pages = (end - start) >> PAGE_SHIFT;
 if (!lock)
  nr_pages = -nr_pages;
 mm->locked_vm += nr_pages;







 if (lock) {
  vma->vm_flags = newflags;
  ret = __mlock_vma_pages_range(vma, start, end);
  if (ret < 0)
   ret = __mlock_posix_error_return(ret);
 } else {
  munlock_vma_pages_range(vma, start, end);
 }

out:
 *prev = vma;
 return ret;
}

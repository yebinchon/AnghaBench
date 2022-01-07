
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int vm_flags; } ;
struct TYPE_2__ {int mm; } ;


 int BUG_ON (int) ;
 unsigned long PAGE_SIZE ;
 int VM_DONTEXPAND ;
 int VM_IO ;
 int VM_LOCKED ;
 int VM_PFNMAP ;
 int VM_RESERVED ;
 int __mlock_vma_pages_range (struct vm_area_struct*,unsigned long,unsigned long) ;
 TYPE_1__* current ;
 struct vm_area_struct* get_gate_vma (int ) ;
 scalar_t__ is_vm_hugetlb_page (struct vm_area_struct*) ;
 int make_pages_present (unsigned long,unsigned long) ;

long mlock_vma_pages_range(struct vm_area_struct *vma,
   unsigned long start, unsigned long end)
{
 int nr_pages = (end - start) / PAGE_SIZE;
 BUG_ON(!(vma->vm_flags & VM_LOCKED));




 if (vma->vm_flags & (VM_IO | VM_PFNMAP))
  goto no_mlock;

 if (!((vma->vm_flags & (VM_DONTEXPAND | VM_RESERVED)) ||
   is_vm_hugetlb_page(vma) ||
   vma == get_gate_vma(current->mm))) {

  __mlock_vma_pages_range(vma, start, end);


  return 0;
 }
 make_pages_present(start, end);

no_mlock:
 vma->vm_flags &= ~VM_LOCKED;
 return nr_pages;
}

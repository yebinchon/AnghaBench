
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;


 int EINVAL ;
 unsigned long PAGE_SHIFT ;
 int VM_IO ;
 int VM_PFNMAP ;

int follow_pfn(struct vm_area_struct *vma, unsigned long address,
 unsigned long *pfn)
{
 if (!(vma->vm_flags & (VM_IO | VM_PFNMAP)))
  return -EINVAL;

 *pfn = address >> PAGE_SHIFT;
 return 0;
}

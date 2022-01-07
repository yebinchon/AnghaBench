
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned int vm_end; unsigned int vm_start; int vm_flags; } ;


 int EINVAL ;
 unsigned long PAGE_SHIFT ;
 int VM_USERMAP ;

int remap_vmalloc_range(struct vm_area_struct *vma, void *addr,
   unsigned long pgoff)
{
 unsigned int size = vma->vm_end - vma->vm_start;

 if (!(vma->vm_flags & VM_USERMAP))
  return -EINVAL;

 vma->vm_start = (unsigned long)(addr + (pgoff << PAGE_SHIFT));
 vma->vm_end = vma->vm_start + size;

 return 0;
}

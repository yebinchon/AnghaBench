
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {scalar_t__ vm_end; scalar_t__ vm_start; int vm_flags; TYPE_1__* vm_region; } ;
struct TYPE_4__ {int mm; } ;
struct TYPE_3__ {unsigned long vm_end; unsigned long vm_start; } ;


 scalar_t__ EFAULT ;
 unsigned long EINVAL ;
 scalar_t__ ENOMEM ;
 scalar_t__ EPERM ;
 unsigned long MREMAP_FIXED ;
 unsigned long PAGE_MASK ;
 int VM_MAYSHARE ;
 TYPE_2__* current ;
 struct vm_area_struct* find_vma_exact (int ,unsigned long,unsigned long) ;

unsigned long do_mremap(unsigned long addr,
   unsigned long old_len, unsigned long new_len,
   unsigned long flags, unsigned long new_addr)
{
 struct vm_area_struct *vma;


 if (old_len == 0 || new_len == 0)
  return (unsigned long) -EINVAL;

 if (addr & ~PAGE_MASK)
  return -EINVAL;

 if (flags & MREMAP_FIXED && new_addr != addr)
  return (unsigned long) -EINVAL;

 vma = find_vma_exact(current->mm, addr, old_len);
 if (!vma)
  return (unsigned long) -EINVAL;

 if (vma->vm_end != vma->vm_start + old_len)
  return (unsigned long) -EFAULT;

 if (vma->vm_flags & VM_MAYSHARE)
  return (unsigned long) -EPERM;

 if (new_len > vma->vm_region->vm_end - vma->vm_region->vm_start)
  return (unsigned long) -ENOMEM;


 vma->vm_end = vma->vm_start + new_len;
 return vma->vm_start;
}

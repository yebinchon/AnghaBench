
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; int * vm_ops; } ;
struct file {int dummy; } ;


 int EACCES ;
 int VM_MAYWRITE ;
 int VM_RESERVED ;
 int VM_SHARED ;
 int VM_WRITE ;
 int sel_mmap_policy_ops ;

int sel_mmap_policy(struct file *filp, struct vm_area_struct *vma)
{
 if (vma->vm_flags & VM_SHARED) {

  vma->vm_flags &= ~VM_MAYWRITE;

  if (vma->vm_flags & VM_WRITE)
   return -EACCES;
 }

 vma->vm_flags |= VM_RESERVED;
 vma->vm_ops = &sel_mmap_policy_ops;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; int * vm_ops; } ;
struct file {int dummy; } ;


 int ENOSYS ;
 int VM_SHARED ;
 int file_accessed (struct file*) ;
 int generic_file_vm_ops ;

int ramfs_nommu_mmap(struct file *file, struct vm_area_struct *vma)
{
 if (!(vma->vm_flags & VM_SHARED))
  return -ENOSYS;

 file_accessed(file);
 vma->vm_ops = &generic_file_vm_ops;
 return 0;
}

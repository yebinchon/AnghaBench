
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; int * vm_ops; } ;
struct file {int dummy; } ;


 int VM_CAN_NONLINEAR ;
 int file_accessed (struct file*) ;
 int nilfs_file_vm_ops ;

__attribute__((used)) static int nilfs_file_mmap(struct file *file, struct vm_area_struct *vma)
{
 file_accessed(file);
 vma->vm_ops = &nilfs_file_vm_ops;
 vma->vm_flags |= VM_CAN_NONLINEAR;
 return 0;
}

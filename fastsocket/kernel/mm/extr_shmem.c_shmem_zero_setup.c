
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; int * vm_ops; struct file* vm_file; scalar_t__ vm_start; scalar_t__ vm_end; } ;
struct file {int dummy; } ;
typedef scalar_t__ loff_t ;


 scalar_t__ IS_ERR (struct file*) ;
 int PTR_ERR (struct file*) ;
 int VM_CAN_NONLINEAR ;
 int fput (struct file*) ;
 struct file* shmem_file_setup (char*,scalar_t__,int ) ;
 int shmem_vm_ops ;

int shmem_zero_setup(struct vm_area_struct *vma)
{
 struct file *file;
 loff_t size = vma->vm_end - vma->vm_start;

 file = shmem_file_setup("dev/zero", size, vma->vm_flags);
 if (IS_ERR(file))
  return PTR_ERR(file);

 if (vma->vm_file)
  fput(vma->vm_file);
 vma->vm_file = file;
 vma->vm_ops = &shmem_vm_ops;
 vma->vm_flags |= VM_CAN_NONLINEAR;
 return 0;
}

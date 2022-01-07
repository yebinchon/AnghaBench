
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {int vm_flags; int * vm_ops; } ;
struct file {TYPE_2__* f_mapping; } ;
struct TYPE_4__ {TYPE_1__* a_ops; } ;
struct TYPE_3__ {int get_xip_mem; } ;


 int BUG_ON (int) ;
 int VM_CAN_NONLINEAR ;
 int VM_MIXEDMAP ;
 int file_accessed (struct file*) ;
 int xip_file_vm_ops ;

int xip_file_mmap(struct file * file, struct vm_area_struct * vma)
{
 BUG_ON(!file->f_mapping->a_ops->get_xip_mem);

 file_accessed(file);
 vma->vm_ops = &xip_file_vm_ops;
 vma->vm_flags |= VM_CAN_NONLINEAR | VM_MIXEDMAP;
 return 0;
}

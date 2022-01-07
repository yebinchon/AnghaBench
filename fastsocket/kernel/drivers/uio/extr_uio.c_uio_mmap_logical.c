
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int * vm_ops; int vm_flags; } ;


 int VM_RESERVED ;
 int uio_vm_ops ;
 int uio_vma_open (struct vm_area_struct*) ;

__attribute__((used)) static int uio_mmap_logical(struct vm_area_struct *vma)
{
 vma->vm_flags |= VM_RESERVED;
 vma->vm_ops = &uio_vm_ops;
 uio_vma_open(vma);
 return 0;
}

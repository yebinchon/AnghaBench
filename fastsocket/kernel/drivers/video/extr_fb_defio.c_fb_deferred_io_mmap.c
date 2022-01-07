
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; struct fb_info* vm_private_data; int * vm_ops; } ;
struct fb_info {int dummy; } ;


 int VM_DONTEXPAND ;
 int VM_IO ;
 int VM_RESERVED ;
 int fb_deferred_io_vm_ops ;

__attribute__((used)) static int fb_deferred_io_mmap(struct fb_info *info, struct vm_area_struct *vma)
{
 vma->vm_ops = &fb_deferred_io_vm_ops;
 vma->vm_flags |= ( VM_IO | VM_RESERVED | VM_DONTEXPAND );
 vma->vm_private_data = info;
 return 0;
}

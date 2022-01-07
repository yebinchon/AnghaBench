
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;
struct file {int dummy; } ;


 int ENOSYS ;
 int VM_MAYSHARE ;
 int VM_SHARED ;

__attribute__((used)) static int romfs_mmap(struct file *file, struct vm_area_struct *vma)
{
 return vma->vm_flags & (VM_SHARED | VM_MAYSHARE) ? 0 : -ENOSYS;
}

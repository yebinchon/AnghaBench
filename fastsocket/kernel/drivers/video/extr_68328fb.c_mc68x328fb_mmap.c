
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_start; int vm_flags; } ;
struct fb_info {int dummy; } ;


 int EINVAL ;
 int VM_RESERVED ;
 int videomemory ;

__attribute__((used)) static int mc68x328fb_mmap(struct fb_info *info, struct vm_area_struct *vma)
{



 vma->vm_flags |= VM_RESERVED;
 vma->vm_start = videomemory;

 return 0;



}

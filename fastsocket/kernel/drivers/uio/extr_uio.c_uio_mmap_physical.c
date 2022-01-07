
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {int vm_flags; int vm_page_prot; scalar_t__ vm_start; scalar_t__ vm_end; struct uio_device* vm_private_data; } ;
struct uio_device {TYPE_2__* info; } ;
struct TYPE_4__ {TYPE_1__* mem; } ;
struct TYPE_3__ {int addr; } ;


 int EINVAL ;
 int PAGE_SHIFT ;
 int VM_IO ;
 int VM_RESERVED ;
 int pgprot_noncached (int ) ;
 int remap_pfn_range (struct vm_area_struct*,scalar_t__,int,scalar_t__,int ) ;
 int uio_find_mem_index (struct vm_area_struct*) ;

__attribute__((used)) static int uio_mmap_physical(struct vm_area_struct *vma)
{
 struct uio_device *idev = vma->vm_private_data;
 int mi = uio_find_mem_index(vma);
 if (mi < 0)
  return -EINVAL;

 vma->vm_flags |= VM_IO | VM_RESERVED;

 vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);

 return remap_pfn_range(vma,
          vma->vm_start,
          idev->info->mem[mi].addr >> PAGE_SHIFT,
          vma->vm_end - vma->vm_start,
          vma->vm_page_prot);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_fault {int pgoff; struct page* page; } ;
struct vm_area_struct {struct uio_device* vm_private_data; } ;
struct uio_device {TYPE_2__* info; } ;
struct page {int dummy; } ;
struct TYPE_4__ {TYPE_1__* mem; } ;
struct TYPE_3__ {scalar_t__ memtype; scalar_t__ addr; } ;


 int PAGE_SHIFT ;
 scalar_t__ UIO_MEM_LOGICAL ;
 int VM_FAULT_SIGBUS ;
 int get_page (struct page*) ;
 int uio_find_mem_index (struct vm_area_struct*) ;
 struct page* virt_to_page (scalar_t__) ;
 struct page* vmalloc_to_page (void*) ;

__attribute__((used)) static int uio_vma_fault(struct vm_area_struct *vma, struct vm_fault *vmf)
{
 struct uio_device *idev = vma->vm_private_data;
 struct page *page;
 unsigned long offset;

 int mi = uio_find_mem_index(vma);
 if (mi < 0)
  return VM_FAULT_SIGBUS;





 offset = (vmf->pgoff - mi) << PAGE_SHIFT;

 if (idev->info->mem[mi].memtype == UIO_MEM_LOGICAL)
  page = virt_to_page(idev->info->mem[mi].addr + offset);
 else
  page = vmalloc_to_page((void *)idev->info->mem[mi].addr
       + offset);
 get_page(page);
 vmf->page = page;
 return 0;
}

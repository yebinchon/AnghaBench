
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_fault {struct page* page; scalar_t__ pgoff; } ;
struct vm_area_struct {struct page** vm_private_data; scalar_t__ vm_pgoff; } ;
struct page {int dummy; } ;
typedef scalar_t__ pgoff_t ;


 int VM_FAULT_SIGBUS ;
 int get_page (struct page*) ;

__attribute__((used)) static int special_mapping_fault(struct vm_area_struct *vma,
    struct vm_fault *vmf)
{
 pgoff_t pgoff;
 struct page **pages;







 pgoff = vmf->pgoff - vma->vm_pgoff;

 for (pages = vma->vm_private_data; pgoff && *pages; ++pages)
  pgoff--;

 if (*pages) {
  struct page *page = *pages;
  get_page(page);
  vmf->page = page;
  return 0;
 }

 return VM_FAULT_SIGBUS;
}

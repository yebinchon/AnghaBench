
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_fault {struct page* page; scalar_t__ virtual_address; } ;
struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;


 int GFP_USER ;
 int VM_FAULT_OOM ;
 int __GFP_DMA32 ;
 struct page* alloc_page (int) ;
 int clear_user_highpage (struct page*,unsigned long) ;

__attribute__((used)) static int go7007_vm_fault(struct vm_area_struct *vma, struct vm_fault *vmf)
{
 struct page *page;

 page = alloc_page(GFP_USER | __GFP_DMA32);
 if (!page)
  return VM_FAULT_OOM;
 clear_user_highpage(page, (unsigned long)vmf->virtual_address);
 vmf->page = page;
 return 0;
}

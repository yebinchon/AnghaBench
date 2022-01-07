
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {unsigned int vm_end; unsigned int vm_start; } ;
struct page {int dummy; } ;
struct TYPE_2__ {int mm; } ;


 unsigned int PAGE_SIZE ;
 int PageCompound (struct page*) ;
 scalar_t__ PageSlab (struct page*) ;
 unsigned int compound_order (struct page*) ;
 TYPE_1__* current ;
 struct vm_area_struct* find_vma (int ,unsigned long) ;
 unsigned int ksize (void const*) ;
 int virt_addr_valid (void const*) ;
 struct page* virt_to_head_page (void const*) ;

unsigned int kobjsize(const void *objp)
{
 struct page *page;





 if (!objp || !virt_addr_valid(objp))
  return 0;

 page = virt_to_head_page(objp);





 if (PageSlab(page))
  return ksize(objp);







 if (!PageCompound(page)) {
  struct vm_area_struct *vma;

  vma = find_vma(current->mm, (unsigned long)objp);
  if (vma)
   return vma->vm_end - vma->vm_start;
 }





 return PAGE_SIZE << compound_order(page);
}

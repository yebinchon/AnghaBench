
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; int vm_page_prot; int vm_flags; } ;
struct page {int dummy; } ;


 int EFAULT ;
 int EINVAL ;
 int VM_INSERTPAGE ;
 int insert_page (struct vm_area_struct*,unsigned long,struct page*,int ) ;
 int page_count (struct page*) ;

int vm_insert_page(struct vm_area_struct *vma, unsigned long addr,
   struct page *page)
{
 if (addr < vma->vm_start || addr >= vma->vm_end)
  return -EFAULT;
 if (!page_count(page))
  return -EINVAL;
 vma->vm_flags |= VM_INSERTPAGE;
 return insert_page(vma, addr, page, vma->vm_page_prot);
}

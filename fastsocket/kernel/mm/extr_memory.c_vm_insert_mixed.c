
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; unsigned long vm_start; unsigned long vm_end; int vm_page_prot; } ;
struct page {int dummy; } ;


 int BUG_ON (int) ;
 int EFAULT ;
 int HAVE_PTE_SPECIAL ;
 int VM_MIXEDMAP ;
 int insert_page (struct vm_area_struct*,unsigned long,struct page*,int ) ;
 int insert_pfn (struct vm_area_struct*,unsigned long,unsigned long,int ) ;
 struct page* pfn_to_page (unsigned long) ;
 scalar_t__ pfn_valid (unsigned long) ;

int vm_insert_mixed(struct vm_area_struct *vma, unsigned long addr,
   unsigned long pfn)
{
 BUG_ON(!(vma->vm_flags & VM_MIXEDMAP));

 if (addr < vma->vm_start || addr >= vma->vm_end)
  return -EFAULT;
 if (!HAVE_PTE_SPECIAL && pfn_valid(pfn)) {
  struct page *page;

  page = pfn_to_page(pfn);
  return insert_page(vma, addr, page, vma->vm_page_prot);
 }
 return insert_pfn(vma, addr, pfn, vma->vm_page_prot);
}

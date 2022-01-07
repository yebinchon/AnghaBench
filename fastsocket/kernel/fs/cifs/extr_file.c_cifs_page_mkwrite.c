
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_fault {struct page* page; } ;
struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;


 int VM_FAULT_LOCKED ;
 int lock_page (struct page*) ;

__attribute__((used)) static int
cifs_page_mkwrite(struct vm_area_struct *vma, struct vm_fault *vmf)
{
 struct page *page = vmf->page;

 lock_page(page);
 return VM_FAULT_LOCKED;
}

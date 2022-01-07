
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;
struct page {scalar_t__ mapping; } ;


 int FOLL_DUMP ;
 int FOLL_GET ;
 int IS_ERR (struct page*) ;
 scalar_t__ PAGE_SIZE ;
 int VM_LOCKED ;
 int cond_resched () ;
 struct page* follow_page (struct vm_area_struct*,unsigned long,int) ;
 int lock_page (struct page*) ;
 int lru_add_drain () ;
 int munlock_vma_page (struct page*) ;
 int put_page (struct page*) ;
 int unlock_page (struct page*) ;

void munlock_vma_pages_range(struct vm_area_struct *vma,
        unsigned long start, unsigned long end)
{
 unsigned long addr;

 lru_add_drain();
 vma->vm_flags &= ~VM_LOCKED;

 for (addr = start; addr < end; addr += PAGE_SIZE) {
  struct page *page;







  page = follow_page(vma, addr, FOLL_GET | FOLL_DUMP);
  if (page && !IS_ERR(page)) {
   lock_page(page);






   if (page->mapping)
    munlock_vma_page(page);
   unlock_page(page);
   put_page(page);
  }
  cond_resched();
 }
}

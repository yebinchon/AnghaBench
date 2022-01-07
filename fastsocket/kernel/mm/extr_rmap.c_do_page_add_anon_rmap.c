
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; } ;
struct page {int _mapcount; } ;


 int NR_ANON_PAGES ;
 int NR_ANON_TRANSPARENT_HUGEPAGES ;
 int PageKsm (struct page*) ;
 int PageLocked (struct page*) ;
 int PageTransHuge (struct page*) ;
 int VM_BUG_ON (int) ;
 int __inc_zone_page_state (struct page*,int ) ;
 int __page_check_anon_rmap (struct page*,struct vm_area_struct*,unsigned long) ;
 int __page_set_anon_rmap (struct page*,struct vm_area_struct*,unsigned long,int) ;
 int atomic_inc_and_test (int *) ;
 scalar_t__ unlikely (int ) ;

void do_page_add_anon_rmap(struct page *page,
 struct vm_area_struct *vma, unsigned long address, int exclusive)
{
 int first = atomic_inc_and_test(&page->_mapcount);
 if (first) {
  if (!PageTransHuge(page))
   __inc_zone_page_state(page, NR_ANON_PAGES);
  else
   __inc_zone_page_state(page,
           NR_ANON_TRANSPARENT_HUGEPAGES);
 }
 if (unlikely(PageKsm(page)))
  return;

 VM_BUG_ON(!PageLocked(page));
 VM_BUG_ON(address < vma->vm_start || address >= vma->vm_end);
 if (first)
  __page_set_anon_rmap(page, vma, address, exclusive);
 else
  __page_check_anon_rmap(page, vma, address);
}

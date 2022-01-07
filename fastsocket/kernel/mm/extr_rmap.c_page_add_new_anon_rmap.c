
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; } ;
struct page {int _mapcount; } ;


 int LRU_ACTIVE_ANON ;
 int NR_ANON_PAGES ;
 int NR_ANON_TRANSPARENT_HUGEPAGES ;
 int PageTransHuge (struct page*) ;
 int SetPageSwapBacked (struct page*) ;
 int VM_BUG_ON (int) ;
 int __inc_zone_page_state (struct page*,int ) ;
 int __page_set_anon_rmap (struct page*,struct vm_area_struct*,unsigned long,int) ;
 int add_page_to_unevictable_list (struct page*) ;
 int atomic_set (int *,int ) ;
 int lru_cache_add_lru (struct page*,int ) ;
 scalar_t__ page_evictable (struct page*,struct vm_area_struct*) ;

void page_add_new_anon_rmap(struct page *page,
 struct vm_area_struct *vma, unsigned long address)
{
 VM_BUG_ON(address < vma->vm_start || address >= vma->vm_end);
 SetPageSwapBacked(page);
 atomic_set(&page->_mapcount, 0);
 if (!PageTransHuge(page))
  __inc_zone_page_state(page, NR_ANON_PAGES);
 else
  __inc_zone_page_state(page, NR_ANON_TRANSPARENT_HUGEPAGES);
 __page_set_anon_rmap(page, vma, address, 1);
 if (page_evictable(page, vma))
  lru_cache_add_lru(page, LRU_ACTIVE_ANON);
 else
  add_page_to_unevictable_list(page);
}

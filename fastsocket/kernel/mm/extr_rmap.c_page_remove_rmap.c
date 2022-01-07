
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int _mapcount; } ;
struct address_space {int dummy; } ;


 int NR_ANON_PAGES ;
 int NR_ANON_TRANSPARENT_HUGEPAGES ;
 int NR_FILE_MAPPED ;
 scalar_t__ PageAnon (struct page*) ;
 int PageHuge (struct page*) ;
 int PageTransHuge (struct page*) ;
 int __dec_zone_page_state (struct page*,int ) ;
 int atomic_add_negative (int,int *) ;
 int mapping_cap_account_dirty (struct address_space*) ;
 int mem_cgroup_uncharge_page (struct page*) ;
 int mem_cgroup_update_file_mapped (struct page*,int) ;
 int page_clear_dirty (struct page*) ;
 struct address_space* page_mapping (struct page*) ;
 scalar_t__ page_test_dirty (struct page*) ;
 int set_page_dirty (struct page*) ;
 scalar_t__ unlikely (int ) ;

void page_remove_rmap(struct page *page)
{
 struct address_space *mapping = page_mapping(page);


 if (!atomic_add_negative(-1, &page->_mapcount))
  return;
 if (mapping && !mapping_cap_account_dirty(mapping) &&
     page_test_dirty(page)) {
  page_clear_dirty(page);
  set_page_dirty(page);
 }




 if (unlikely(PageHuge(page)))
  return;
 if (PageAnon(page)) {
  mem_cgroup_uncharge_page(page);
  if (!PageTransHuge(page))
   __dec_zone_page_state(page, NR_ANON_PAGES);
  else
   __dec_zone_page_state(page,
           NR_ANON_TRANSPARENT_HUGEPAGES);
 } else {
  __dec_zone_page_state(page, NR_FILE_MAPPED);
  mem_cgroup_update_file_mapped(page, -1);
 }
}

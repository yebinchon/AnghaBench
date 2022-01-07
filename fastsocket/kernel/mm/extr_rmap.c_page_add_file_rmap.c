
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int _mapcount; } ;


 int NR_FILE_MAPPED ;
 int __inc_zone_page_state (struct page*,int ) ;
 scalar_t__ atomic_inc_and_test (int *) ;
 int mem_cgroup_update_file_mapped (struct page*,int) ;

void page_add_file_rmap(struct page *page)
{
 if (atomic_inc_and_test(&page->_mapcount)) {
  __inc_zone_page_state(page, NR_FILE_MAPPED);
  mem_cgroup_update_file_mapped(page, 1);
 }
}

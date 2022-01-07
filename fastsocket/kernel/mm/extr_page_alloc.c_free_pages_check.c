
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int flags; int _count; int * mapping; } ;


 int PAGE_FLAGS_CHECK_AT_FREE ;
 int PAGE_FLAGS_CHECK_AT_PREP ;
 scalar_t__ atomic_read (int *) ;
 int bad_page (struct page*) ;
 int mem_cgroup_bad_page_check (struct page*) ;
 int page_mapcount (struct page*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int free_pages_check(struct page *page)
{
 if (unlikely(page_mapcount(page) |
  (page->mapping != ((void*)0)) |
  (atomic_read(&page->_count) != 0) |
  (page->flags & PAGE_FLAGS_CHECK_AT_FREE) |
  (mem_cgroup_bad_page_check(page)))) {
  bad_page(page);
  return 1;
 }
 if (page->flags & PAGE_FLAGS_CHECK_AT_PREP)
  page->flags &= ~PAGE_FLAGS_CHECK_AT_PREP;
 return 0;
}

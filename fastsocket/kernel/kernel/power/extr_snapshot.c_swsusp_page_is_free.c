
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 scalar_t__ free_pages_map ;
 int memory_bm_test_bit (scalar_t__,int ) ;
 int page_to_pfn (struct page*) ;

__attribute__((used)) static int swsusp_page_is_free(struct page *page)
{
 return free_pages_map ?
  memory_bm_test_bit(free_pages_map, page_to_pfn(page)) : 0;
}

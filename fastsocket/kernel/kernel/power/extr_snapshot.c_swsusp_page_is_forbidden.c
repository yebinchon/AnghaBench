
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 scalar_t__ forbidden_pages_map ;
 int memory_bm_test_bit (scalar_t__,int ) ;
 int page_to_pfn (struct page*) ;

int swsusp_page_is_forbidden(struct page *page)
{
 return forbidden_pages_map ?
  memory_bm_test_bit(forbidden_pages_map, page_to_pfn(page)) : 0;
}

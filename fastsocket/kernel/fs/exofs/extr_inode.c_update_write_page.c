
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int mapping; } ;


 int SetPageError (struct page*) ;
 int end_page_writeback (struct page*) ;
 int mapping_set_error (int ,int) ;

__attribute__((used)) static void update_write_page(struct page *page, int ret)
{
 if (ret) {
  mapping_set_error(page->mapping, ret);
  SetPageError(page);
 }
 end_page_writeback(page);
}

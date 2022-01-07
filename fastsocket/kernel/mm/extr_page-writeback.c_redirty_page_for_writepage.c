
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {int pages_skipped; } ;
struct page {int dummy; } ;


 int __set_page_dirty_nobuffers (struct page*) ;

int redirty_page_for_writepage(struct writeback_control *wbc, struct page *page)
{
 wbc->pages_skipped++;
 return __set_page_dirty_nobuffers(page);
}

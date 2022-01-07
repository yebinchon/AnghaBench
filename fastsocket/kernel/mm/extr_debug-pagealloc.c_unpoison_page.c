
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int PAGE_SIZE ;
 scalar_t__ PageHighMem (struct page*) ;
 int check_poison_mem (void*,int ) ;
 int clear_page_poison (struct page*) ;
 void* page_address (struct page*) ;
 scalar_t__ page_poison (struct page*) ;
 int unpoison_highpage (struct page*) ;

__attribute__((used)) static void unpoison_page(struct page *page)
{
 if (PageHighMem(page)) {
  unpoison_highpage(page);
  return;
 }
 if (page_poison(page)) {
  void *addr = page_address(page);

  check_poison_mem(addr, PAGE_SIZE);
  clear_page_poison(page);
 }
}

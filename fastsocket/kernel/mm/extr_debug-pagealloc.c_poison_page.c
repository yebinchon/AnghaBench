
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int PAGE_POISON ;
 int PAGE_SIZE ;
 scalar_t__ PageHighMem (struct page*) ;
 int memset (void*,int ,int ) ;
 void* page_address (struct page*) ;
 int poison_highpage (struct page*) ;
 int set_page_poison (struct page*) ;

__attribute__((used)) static void poison_page(struct page *page)
{
 void *addr;

 if (PageHighMem(page)) {
  poison_highpage(page);
  return;
 }
 set_page_poison(page);
 addr = page_address(page);
 memset(addr, PAGE_POISON, PAGE_SIZE);
}

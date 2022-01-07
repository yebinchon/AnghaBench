
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int _count; } ;


 int PageTail (struct page*) ;
 int VM_BUG_ON (int) ;
 int __get_page_tail (struct page*) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ likely (int ) ;
 scalar_t__ unlikely (int ) ;

void get_page(struct page *page)
{
 if (unlikely(PageTail(page)))
  if (likely(__get_page_tail(page)))
   return;




 VM_BUG_ON(atomic_read(&page->_count) <= 0);
 atomic_inc(&page->_count);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int _count; } ;


 int PageTail (struct page*) ;
 int VM_BUG_ON (int) ;
 int __get_page_tail_foll (struct page*,int) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline void get_page_foll(struct page *page)
{
 if (unlikely(PageTail(page)))





  __get_page_tail_foll(page, 1);
 else {




  VM_BUG_ON(atomic_read(&page->_count) <= 0);
  atomic_inc(&page->_count);
 }
}

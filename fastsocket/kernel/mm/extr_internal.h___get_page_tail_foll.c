
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int _mapcount; TYPE_1__* first_page; int _count; } ;
struct TYPE_2__ {int _count; } ;


 int VM_BUG_ON (int) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ page_mapcount (struct page*) ;

__attribute__((used)) static inline void __get_page_tail_foll(struct page *page,
     bool get_page_head)
{
 VM_BUG_ON(atomic_read(&page->first_page->_count) <= 0);
 VM_BUG_ON(atomic_read(&page->_count) != 0);
 VM_BUG_ON(page_mapcount(page) < 0);
 if (get_page_head)
  atomic_inc(&page->first_page->_count);
 atomic_inc(&page->_mapcount);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int _count; } ;


 int PageTail (struct page*) ;
 int VM_BUG_ON (int ) ;
 int atomic_read (int *) ;
 int set_page_count (struct page*,int) ;

__attribute__((used)) static inline void set_page_refcounted(struct page *page)
{
 VM_BUG_ON(PageTail(page));
 VM_BUG_ON(atomic_read(&page->_count));
 set_page_count(page, 1);
}

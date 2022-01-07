
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int _count; } ;


 int atomic_dec (int *) ;

__attribute__((used)) static inline void __put_page(struct page *page)
{
 atomic_dec(&page->_count);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int _count; } ;


 int atomic_set (int *,int) ;

__attribute__((used)) static inline void set_page_count(struct page *page, int v)
{
 atomic_set(&page->_count, v);
}

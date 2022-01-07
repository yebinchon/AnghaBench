
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int page_count (struct page*) ;
 int page_has_private (struct page*) ;

__attribute__((used)) static inline int is_page_cache_freeable(struct page *page)
{





 return page_count(page) - page_has_private(page) == 2;
}

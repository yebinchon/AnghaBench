
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int kunmap (struct page*) ;
 int page_cache_release (struct page*) ;

__attribute__((used)) static inline void dir_put_page(struct page *page)
{
 kunmap(page);
 page_cache_release(page);
}

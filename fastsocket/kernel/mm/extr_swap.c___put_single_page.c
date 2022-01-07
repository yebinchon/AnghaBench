
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int __page_cache_release (struct page*) ;
 int free_hot_page (struct page*) ;

__attribute__((used)) static void __put_single_page(struct page *page)
{
 __page_cache_release(page);
 free_hot_page(page);
}

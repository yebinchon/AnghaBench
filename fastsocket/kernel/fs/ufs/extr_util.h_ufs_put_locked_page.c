
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int page_cache_release (struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static inline void ufs_put_locked_page(struct page *page)
{
       unlock_page(page);
       page_cache_release(page);
}

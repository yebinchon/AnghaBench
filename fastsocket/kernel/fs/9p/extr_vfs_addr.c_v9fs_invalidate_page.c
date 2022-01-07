
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int v9fs_fscache_invalidate_page (struct page*) ;

__attribute__((used)) static void v9fs_invalidate_page(struct page *page, unsigned long offset)
{
 if (offset == 0)
  v9fs_fscache_invalidate_page(page);
}

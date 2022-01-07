
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int page_cache_release (struct page*) ;

__attribute__((used)) static void nfs_direct_release_pages(struct page **pages, unsigned int npages)
{
 unsigned int i;
 for (i = 0; i < npages; i++)
  page_cache_release(pages[i]);
}

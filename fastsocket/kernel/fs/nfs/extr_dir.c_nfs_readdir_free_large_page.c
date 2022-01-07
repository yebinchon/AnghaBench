
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int nfs_readdir_free_pagearray (struct page**,unsigned int) ;

__attribute__((used)) static
void nfs_readdir_free_large_page(void *ptr, struct page **pages,
  unsigned int npages)
{
 nfs_readdir_free_pagearray(pages, npages);
}

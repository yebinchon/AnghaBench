
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct page {int dummy; } ;
struct block_device {TYPE_1__* bd_inode; } ;
struct address_space {int dummy; } ;
typedef int sector_t ;
typedef int pgoff_t ;
struct TYPE_5__ {struct page* v; } ;
struct TYPE_4__ {struct address_space* i_mapping; } ;
typedef TYPE_2__ Sector ;


 int IS_ERR (struct page*) ;
 int PAGE_CACHE_SHIFT ;
 scalar_t__ PageError (struct page*) ;
 scalar_t__ page_address (struct page*) ;
 int page_cache_release (struct page*) ;
 struct page* read_mapping_page (struct address_space*,int ,int *) ;

unsigned char *read_dev_sector(struct block_device *bdev, sector_t n, Sector *p)
{
 struct address_space *mapping = bdev->bd_inode->i_mapping;
 struct page *page;

 page = read_mapping_page(mapping, (pgoff_t)(n >> (PAGE_CACHE_SHIFT-9)),
     ((void*)0));
 if (!IS_ERR(page)) {
  if (PageError(page))
   goto fail;
  p->v = page;
  return (unsigned char *)page_address(page) + ((n & ((1 << (PAGE_CACHE_SHIFT - 9)) - 1)) << 9);
fail:
  page_cache_release(page);
 }
 p->v = ((void*)0);
 return ((void*)0);
}

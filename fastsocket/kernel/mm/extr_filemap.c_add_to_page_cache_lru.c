
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct address_space {int dummy; } ;
typedef int pgoff_t ;
typedef int gfp_t ;


 int SetPageSwapBacked (struct page*) ;
 int add_to_page_cache (struct page*,struct address_space*,int ,int ) ;
 int lru_cache_add_file (struct page*) ;
 scalar_t__ mapping_cap_swap_backed (struct address_space*) ;

int add_to_page_cache_lru(struct page *page, struct address_space *mapping,
    pgoff_t offset, gfp_t gfp_mask)
{
 int ret;







 if (mapping_cap_swap_backed(mapping))
  SetPageSwapBacked(page);

 ret = add_to_page_cache(page, mapping, offset, gfp_mask);
 if (ret == 0)
  lru_cache_add_file(page);
 return ret;
}

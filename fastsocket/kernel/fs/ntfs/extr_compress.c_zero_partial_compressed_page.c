
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct page {scalar_t__ index; } ;
typedef unsigned int const s64 ;


 unsigned int const PAGE_CACHE_MASK ;
 unsigned int const PAGE_CACHE_SHIFT ;
 scalar_t__ PAGE_CACHE_SIZE ;
 int clear_page (int *) ;
 int memset (int *,int ,scalar_t__) ;
 int ntfs_debug (char*) ;
 int * page_address (struct page*) ;

__attribute__((used)) static void zero_partial_compressed_page(struct page *page,
  const s64 initialized_size)
{
 u8 *kp = page_address(page);
 unsigned int kp_ofs;

 ntfs_debug("Zeroing page region outside initialized size.");
 if (((s64)page->index << PAGE_CACHE_SHIFT) >= initialized_size) {




  clear_page(kp);
  return;
 }
 kp_ofs = initialized_size & ~PAGE_CACHE_MASK;
 memset(kp + kp_ofs, 0, PAGE_CACHE_SIZE - kp_ofs);
 return;
}

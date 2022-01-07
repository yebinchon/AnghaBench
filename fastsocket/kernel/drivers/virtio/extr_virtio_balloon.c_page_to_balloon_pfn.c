
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct page {int dummy; } ;


 int BUILD_BUG_ON (int) ;
 scalar_t__ PAGE_SHIFT ;
 scalar_t__ VIRTIO_BALLOON_PFN_SHIFT ;
 unsigned long page_to_pfn (struct page*) ;

__attribute__((used)) static u32 page_to_balloon_pfn(struct page *page)
{
 unsigned long pfn = page_to_pfn(page);

 BUILD_BUG_ON(PAGE_SHIFT < VIRTIO_BALLOON_PFN_SHIFT);

 return pfn >> (PAGE_SHIFT - VIRTIO_BALLOON_PFN_SHIFT);
}

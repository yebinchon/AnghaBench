
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {scalar_t__ index; TYPE_1__* mapping; } ;
typedef scalar_t__ pgoff_t ;
typedef int loff_t ;
struct TYPE_2__ {int host; } ;


 int PAGE_CACHE_MASK ;
 int PAGE_CACHE_SHIFT ;
 unsigned int PAGE_CACHE_SIZE ;
 int i_size_read (int ) ;

__attribute__((used)) static inline
unsigned int nfs_page_length(struct page *page)
{
 loff_t i_size = i_size_read(page->mapping->host);

 if (i_size > 0) {
  pgoff_t end_index = (i_size - 1) >> PAGE_CACHE_SHIFT;
  if (page->index < end_index)
   return PAGE_CACHE_SIZE;
  if (page->index == end_index)
   return ((i_size - 1) & ~PAGE_CACHE_MASK) + 1;
 }
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int PageReserved (struct page*) ;
 int SetPageDirty (struct page*) ;
 int kfree (struct page**) ;
 int page_cache_release (struct page*) ;

__attribute__((used)) static int sep_free_dma_pages(struct page **page_array_ptr, unsigned long num_pages, unsigned long dirtyFlag)
{
 unsigned long count;

 if (dirtyFlag) {
  for (count = 0; count < num_pages; count++) {

   if (!PageReserved(page_array_ptr[count]))
    SetPageDirty(page_array_ptr[count]);
   page_cache_release(page_array_ptr[count]);
  }
 } else {


  for (count = 0; count < num_pages; count++)
   page_cache_release(page_array_ptr[count]);
 }

 if (page_array_ptr)

  kfree(page_array_ptr);

 return 0;
}

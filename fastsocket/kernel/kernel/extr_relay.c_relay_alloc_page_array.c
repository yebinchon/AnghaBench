
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int GFP_KERNEL ;
 size_t PAGE_SIZE ;
 struct page** kzalloc (size_t,int ) ;
 int memset (struct page**,int ,size_t) ;
 struct page** vmalloc (size_t) ;

__attribute__((used)) static struct page **relay_alloc_page_array(unsigned int n_pages)
{
 struct page **array;
 size_t pa_size = n_pages * sizeof(struct page *);

 if (pa_size > PAGE_SIZE) {
  array = vmalloc(pa_size);
  if (array)
   memset(array, 0, pa_size);
 } else {
  array = kzalloc(pa_size, GFP_KERNEL);
 }
 return array;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slab {int dummy; } ;
struct page {int dummy; } ;
struct kmem_cache {int gfporder; } ;


 int PageCompound (struct page*) ;
 scalar_t__ likely (int) ;
 int page_set_cache (struct page*,struct kmem_cache*) ;
 int page_set_slab (struct page*,struct slab*) ;
 struct page* virt_to_page (void*) ;

__attribute__((used)) static void slab_map_pages(struct kmem_cache *cache, struct slab *slab,
      void *addr)
{
 int nr_pages;
 struct page *page;

 page = virt_to_page(addr);

 nr_pages = 1;
 if (likely(!PageCompound(page)))
  nr_pages <<= cache->gfporder;

 do {
  page_set_cache(page, cache);
  page_set_slab(page, slab);
  page++;
 } while (--nr_pages);
}

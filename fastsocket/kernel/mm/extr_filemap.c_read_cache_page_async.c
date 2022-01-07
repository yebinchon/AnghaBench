
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct address_space {int dummy; } ;
typedef int pgoff_t ;


 struct page* do_read_cache_page (struct address_space*,int ,int (*) (void*,struct page*),void*,int ) ;
 int mapping_gfp_mask (struct address_space*) ;

struct page *read_cache_page_async(struct address_space *mapping,
    pgoff_t index,
    int (*filler)(void *, struct page *),
    void *data)
{
 return do_read_cache_page(mapping, index, filler, data, mapping_gfp_mask(mapping));
}

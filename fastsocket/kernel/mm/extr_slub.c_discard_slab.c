
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int objects; } ;
struct kmem_cache {int dummy; } ;


 int dec_slabs_node (struct kmem_cache*,int ,int ) ;
 int free_slab (struct kmem_cache*,struct page*) ;
 int page_to_nid (struct page*) ;

__attribute__((used)) static void discard_slab(struct kmem_cache *s, struct page *page)
{
 dec_slabs_node(s, page_to_nid(page), page->objects);
 free_slab(s, page);
}

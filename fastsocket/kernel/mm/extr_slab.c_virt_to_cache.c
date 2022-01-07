
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct kmem_cache {int dummy; } ;


 struct kmem_cache* page_get_cache (struct page*) ;
 struct page* virt_to_head_page (void const*) ;

__attribute__((used)) static inline struct kmem_cache *virt_to_cache(const void *obj)
{
 struct page *page = virt_to_head_page(obj);
 return page_get_cache(page);
}

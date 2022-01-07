
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slab {int dummy; } ;
struct page {int dummy; } ;


 struct slab* page_get_slab (struct page*) ;
 struct page* virt_to_head_page (void const*) ;

__attribute__((used)) static inline struct slab *virt_to_slab(const void *obj)
{
 struct page *page = virt_to_head_page(obj);
 return page_get_slab(page);
}

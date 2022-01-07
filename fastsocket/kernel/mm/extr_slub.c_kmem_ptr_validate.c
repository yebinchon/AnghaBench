
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {struct kmem_cache* slab; } ;
struct kmem_cache {int dummy; } ;


 int check_valid_pointer (struct kmem_cache*,struct page*,void const*) ;
 struct page* get_object_page (void const*) ;

int kmem_ptr_validate(struct kmem_cache *s, const void *object)
{
 struct page *page;

 page = get_object_page(object);

 if (!page || s != page->slab)

  return 0;

 if (!check_valid_pointer(s, page, object))
  return 0;







 return 1;
}

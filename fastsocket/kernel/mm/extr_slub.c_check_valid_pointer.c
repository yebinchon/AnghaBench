
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int objects; } ;
struct kmem_cache {int size; } ;


 void* page_address (struct page*) ;

__attribute__((used)) static inline int check_valid_pointer(struct kmem_cache *s,
    struct page *page, const void *object)
{
 void *base;

 if (!object)
  return 1;

 base = page_address(page);
 if (object < base || object >= base + page->objects * s->size ||
  (object - base) % s->size) {
  return 0;
 }

 return 1;
}

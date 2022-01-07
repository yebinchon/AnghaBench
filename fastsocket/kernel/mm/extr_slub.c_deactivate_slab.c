
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {void** freelist; int inuse; } ;
struct kmem_cache_cpu {void** freelist; size_t offset; struct page* page; } ;
struct kmem_cache {int dummy; } ;


 int DEACTIVATE_REMOTE_FREES ;
 int stat (struct kmem_cache_cpu*,int ) ;
 int unfreeze_slab (struct kmem_cache*,struct page*,int) ;
 scalar_t__ unlikely (void**) ;

__attribute__((used)) static void deactivate_slab(struct kmem_cache *s, struct kmem_cache_cpu *c)
{
 struct page *page = c->page;
 int tail = 1;

 if (page->freelist)
  stat(c, DEACTIVATE_REMOTE_FREES);





 while (unlikely(c->freelist)) {
  void **object;

  tail = 0;


  object = c->freelist;
  c->freelist = c->freelist[c->offset];


  object[c->offset] = page->freelist;
  page->freelist = object;
  page->inuse--;
 }
 c->page = ((void*)0);
 unfreeze_slab(s, page, tail);
}

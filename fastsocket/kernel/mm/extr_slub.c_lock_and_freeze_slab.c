
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int lru; } ;
struct kmem_cache_node {int nr_partial; } ;


 int __SetPageSlubFrozen (struct page*) ;
 int list_del (int *) ;
 scalar_t__ slab_trylock (struct page*) ;

__attribute__((used)) static inline int lock_and_freeze_slab(struct kmem_cache_node *n,
       struct page *page)
{
 if (slab_trylock(page)) {
  list_del(&page->lru);
  n->nr_partial--;
  __SetPageSlubFrozen(page);
  return 1;
 }
 return 0;
}

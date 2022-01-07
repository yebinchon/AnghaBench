
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {scalar_t__ freelist; scalar_t__ inuse; } ;
struct kmem_cache_node {scalar_t__ nr_partial; } ;
struct kmem_cache_cpu {int dummy; } ;
struct kmem_cache {int flags; scalar_t__ min_partial; } ;


 int DEACTIVATE_EMPTY ;
 int DEACTIVATE_FULL ;
 int DEACTIVATE_TO_HEAD ;
 int DEACTIVATE_TO_TAIL ;
 int FREE_SLAB ;
 scalar_t__ PageSlubDebug (struct page*) ;
 scalar_t__ SLABDEBUG ;
 int SLAB_STORE_USER ;
 int __ClearPageSlubFrozen (struct page*) ;
 int add_full (struct kmem_cache_node*,struct page*) ;
 int add_partial (struct kmem_cache_node*,struct page*,int) ;
 int discard_slab (struct kmem_cache*,struct page*) ;
 struct kmem_cache_cpu* get_cpu_slab (struct kmem_cache*,int ) ;
 struct kmem_cache_node* get_node (struct kmem_cache*,int ) ;
 int page_to_nid (struct page*) ;
 int raw_smp_processor_id () ;
 int slab_unlock (struct page*) ;
 int smp_processor_id () ;
 int stat (struct kmem_cache_cpu*,int ) ;

__attribute__((used)) static void unfreeze_slab(struct kmem_cache *s, struct page *page, int tail)
{
 struct kmem_cache_node *n = get_node(s, page_to_nid(page));
 struct kmem_cache_cpu *c = get_cpu_slab(s, smp_processor_id());

 __ClearPageSlubFrozen(page);
 if (page->inuse) {

  if (page->freelist) {
   add_partial(n, page, tail);
   stat(c, tail ? DEACTIVATE_TO_TAIL : DEACTIVATE_TO_HEAD);
  } else {
   stat(c, DEACTIVATE_FULL);
   if (SLABDEBUG && PageSlubDebug(page) &&
      (s->flags & SLAB_STORE_USER))
    add_full(n, page);
  }
  slab_unlock(page);
 } else {
  stat(c, DEACTIVATE_EMPTY);
  if (n->nr_partial < s->min_partial) {
   add_partial(n, page, 1);
   slab_unlock(page);
  } else {
   slab_unlock(page);
   stat(get_cpu_slab(s, raw_smp_processor_id()), FREE_SLAB);
   discard_slab(s, page);
  }
 }
}

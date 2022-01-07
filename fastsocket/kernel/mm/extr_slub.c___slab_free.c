
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {void** freelist; int inuse; } ;
struct kmem_cache_cpu {int dummy; } ;
struct kmem_cache {int dummy; } ;


 int FREE_ADD_PARTIAL ;
 int FREE_FROZEN ;
 int FREE_REMOVE_PARTIAL ;
 int FREE_SLAB ;
 int FREE_SLOWPATH ;
 scalar_t__ PageSlubDebug (struct page*) ;
 int PageSlubFrozen (struct page*) ;
 scalar_t__ SLABDEBUG ;
 int add_partial (int ,struct page*,int) ;
 int discard_slab (struct kmem_cache*,struct page*) ;
 int free_debug_processing (struct kmem_cache*,struct page*,void*,unsigned long) ;
 struct kmem_cache_cpu* get_cpu_slab (struct kmem_cache*,int ) ;
 int get_node (struct kmem_cache*,int ) ;
 int page_to_nid (struct page*) ;
 int raw_smp_processor_id () ;
 int remove_partial (struct kmem_cache*,struct page*) ;
 int slab_lock (struct page*) ;
 int slab_unlock (struct page*) ;
 int stat (struct kmem_cache_cpu*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void __slab_free(struct kmem_cache *s, struct page *page,
   void *x, unsigned long addr, unsigned int offset)
{
 void *prior;
 void **object = (void *)x;
 struct kmem_cache_cpu *c;

 c = get_cpu_slab(s, raw_smp_processor_id());
 stat(c, FREE_SLOWPATH);
 slab_lock(page);

 if (unlikely(SLABDEBUG && PageSlubDebug(page)))
  goto debug;

checks_ok:
 prior = object[offset] = page->freelist;
 page->freelist = object;
 page->inuse--;

 if (unlikely(PageSlubFrozen(page))) {
  stat(c, FREE_FROZEN);
  goto out_unlock;
 }

 if (unlikely(!page->inuse))
  goto slab_empty;





 if (unlikely(!prior)) {
  add_partial(get_node(s, page_to_nid(page)), page, 1);
  stat(c, FREE_ADD_PARTIAL);
 }

out_unlock:
 slab_unlock(page);
 return;

slab_empty:
 if (prior) {



  remove_partial(s, page);
  stat(c, FREE_REMOVE_PARTIAL);
 }
 slab_unlock(page);
 stat(c, FREE_SLAB);
 discard_slab(s, page);
 return;

debug:
 if (!free_debug_processing(s, page, x, addr))
  goto out_unlock;
 goto checks_ok;
}

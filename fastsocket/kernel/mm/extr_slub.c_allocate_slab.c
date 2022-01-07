
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int objects; } ;
struct kmem_cache_order_objects {int dummy; } ;
struct kmem_cache {int allocflags; int flags; scalar_t__ ctor; struct kmem_cache_order_objects min; struct kmem_cache_order_objects oo; } ;
typedef int gfp_t ;


 int DEBUG_DEFAULT_FLAGS ;
 int NR_SLAB_RECLAIMABLE ;
 int NR_SLAB_UNRECLAIMABLE ;
 int ORDER_FALLBACK ;
 int SLAB_NOTRACK ;
 int SLAB_RECLAIM_ACCOUNT ;
 int __GFP_NOFAIL ;
 int __GFP_NORETRY ;
 int __GFP_NOWARN ;
 struct page* alloc_slab_page (int,int,struct kmem_cache_order_objects) ;
 int get_cpu_slab (struct kmem_cache*,int ) ;
 int kmemcheck_alloc_shadow (struct page*,int,int,int) ;
 scalar_t__ kmemcheck_enabled ;
 int kmemcheck_mark_unallocated_pages (struct page*,int) ;
 int kmemcheck_mark_uninitialized_pages (struct page*,int) ;
 int mod_zone_page_state (int ,int ,int) ;
 int oo_objects (struct kmem_cache_order_objects) ;
 int oo_order (struct kmem_cache_order_objects) ;
 int page_zone (struct page*) ;
 int raw_smp_processor_id () ;
 int stat (int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct page *allocate_slab(struct kmem_cache *s, gfp_t flags, int node)
{
 struct page *page;
 struct kmem_cache_order_objects oo = s->oo;
 gfp_t alloc_gfp;

 flags |= s->allocflags;





 alloc_gfp = (flags | __GFP_NOWARN | __GFP_NORETRY) & ~__GFP_NOFAIL;

 page = alloc_slab_page(alloc_gfp, node, oo);
 if (unlikely(!page)) {
  oo = s->min;




  page = alloc_slab_page(flags, node, oo);
  if (!page)
   return ((void*)0);

  stat(get_cpu_slab(s, raw_smp_processor_id()), ORDER_FALLBACK);
 }

 if (kmemcheck_enabled
  && !(s->flags & (SLAB_NOTRACK | DEBUG_DEFAULT_FLAGS))) {
  int pages = 1 << oo_order(oo);

  kmemcheck_alloc_shadow(page, oo_order(oo), flags, node);





  if (s->ctor)
   kmemcheck_mark_uninitialized_pages(page, pages);
  else
   kmemcheck_mark_unallocated_pages(page, pages);
 }

 page->objects = oo_objects(oo);
 mod_zone_page_state(page_zone(page),
  (s->flags & SLAB_RECLAIM_ACCOUNT) ?
  NR_SLAB_RECLAIMABLE : NR_SLAB_UNRECLAIMABLE,
  1 << oo_order(oo));

 return page;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct kmem_cache {int gfpflags; int flags; int gfporder; scalar_t__ ctor; } ;
typedef int gfp_t ;


 int NR_SLAB_RECLAIMABLE ;
 int NR_SLAB_UNRECLAIMABLE ;
 int SLAB_NOTRACK ;
 int SLAB_RECLAIM_ACCOUNT ;
 int __GFP_COMP ;
 int __GFP_NOTRACK ;
 int __GFP_RECLAIMABLE ;
 int __SetPageSlab (struct page*) ;
 int add_zone_page_state (int ,int ,int) ;
 struct page* alloc_pages_exact_node (int,int,int) ;
 int kmemcheck_alloc_shadow (struct page*,int,int,int) ;
 scalar_t__ kmemcheck_enabled ;
 int kmemcheck_mark_unallocated_pages (struct page*,int) ;
 int kmemcheck_mark_uninitialized_pages (struct page*,int) ;
 void* page_address (struct page*) ;
 int page_zone (struct page*) ;

__attribute__((used)) static void *kmem_getpages(struct kmem_cache *cachep, gfp_t flags, int nodeid)
{
 struct page *page;
 int nr_pages;
 int i;






 flags |= __GFP_COMP;


 flags |= cachep->gfpflags;
 if (cachep->flags & SLAB_RECLAIM_ACCOUNT)
  flags |= __GFP_RECLAIMABLE;

 page = alloc_pages_exact_node(nodeid, flags | __GFP_NOTRACK, cachep->gfporder);
 if (!page)
  return ((void*)0);

 nr_pages = (1 << cachep->gfporder);
 if (cachep->flags & SLAB_RECLAIM_ACCOUNT)
  add_zone_page_state(page_zone(page),
   NR_SLAB_RECLAIMABLE, nr_pages);
 else
  add_zone_page_state(page_zone(page),
   NR_SLAB_UNRECLAIMABLE, nr_pages);
 for (i = 0; i < nr_pages; i++)
  __SetPageSlab(page + i);

 if (kmemcheck_enabled && !(cachep->flags & SLAB_NOTRACK)) {
  kmemcheck_alloc_shadow(page, cachep->gfporder, flags, nodeid);

  if (cachep->ctor)
   kmemcheck_mark_uninitialized_pages(page, nr_pages);
  else
   kmemcheck_mark_unallocated_pages(page, nr_pages);
 }

 return page_address(page);
}

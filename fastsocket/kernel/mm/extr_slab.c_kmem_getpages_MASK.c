#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct page {int dummy; } ;
struct kmem_cache {int gfpflags; int flags; int gfporder; scalar_t__ ctor; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  NR_SLAB_RECLAIMABLE ; 
 int /*<<< orphan*/  NR_SLAB_UNRECLAIMABLE ; 
 int SLAB_NOTRACK ; 
 int SLAB_RECLAIM_ACCOUNT ; 
 int __GFP_COMP ; 
 int __GFP_NOTRACK ; 
 int __GFP_RECLAIMABLE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct page* FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,int,int,int) ; 
 scalar_t__ kmemcheck_enabled ; 
 int /*<<< orphan*/  FUNC4 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,int) ; 
 void* FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 

__attribute__((used)) static void *FUNC8(struct kmem_cache *cachep, gfp_t flags, int nodeid)
{
	struct page *page;
	int nr_pages;
	int i;

#ifndef CONFIG_MMU
	/*
	 * Nommu uses slab's for process anonymous memory allocations, and thus
	 * requires __GFP_COMP to properly refcount higher order allocations
	 */
	flags |= __GFP_COMP;
#endif

	flags |= cachep->gfpflags;
	if (cachep->flags & SLAB_RECLAIM_ACCOUNT)
		flags |= __GFP_RECLAIMABLE;

	page = FUNC2(nodeid, flags | __GFP_NOTRACK, cachep->gfporder);
	if (!page)
		return NULL;

	nr_pages = (1 << cachep->gfporder);
	if (cachep->flags & SLAB_RECLAIM_ACCOUNT)
		FUNC1(FUNC7(page),
			NR_SLAB_RECLAIMABLE, nr_pages);
	else
		FUNC1(FUNC7(page),
			NR_SLAB_UNRECLAIMABLE, nr_pages);
	for (i = 0; i < nr_pages; i++)
		FUNC0(page + i);

	if (kmemcheck_enabled && !(cachep->flags & SLAB_NOTRACK)) {
		FUNC3(page, cachep->gfporder, flags, nodeid);

		if (cachep->ctor)
			FUNC5(page, nr_pages);
		else
			FUNC4(page, nr_pages);
	}

	return FUNC6(page);
}
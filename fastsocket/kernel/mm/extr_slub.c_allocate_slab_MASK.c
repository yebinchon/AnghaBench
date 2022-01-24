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
struct page {int /*<<< orphan*/  objects; } ;
struct kmem_cache_order_objects {int dummy; } ;
struct kmem_cache {int allocflags; int flags; scalar_t__ ctor; struct kmem_cache_order_objects min; struct kmem_cache_order_objects oo; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int DEBUG_DEFAULT_FLAGS ; 
 int /*<<< orphan*/  NR_SLAB_RECLAIMABLE ; 
 int /*<<< orphan*/  NR_SLAB_UNRECLAIMABLE ; 
 int /*<<< orphan*/  ORDER_FALLBACK ; 
 int SLAB_NOTRACK ; 
 int SLAB_RECLAIM_ACCOUNT ; 
 int __GFP_NOFAIL ; 
 int __GFP_NORETRY ; 
 int __GFP_NOWARN ; 
 struct page* FUNC0 (int,int,struct kmem_cache_order_objects) ; 
 int /*<<< orphan*/  FUNC1 (struct kmem_cache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,int,int,int) ; 
 scalar_t__ kmemcheck_enabled ; 
 int /*<<< orphan*/  FUNC3 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct kmem_cache_order_objects) ; 
 int FUNC7 (struct kmem_cache_order_objects) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static struct page *FUNC12(struct kmem_cache *s, gfp_t flags, int node)
{
	struct page *page;
	struct kmem_cache_order_objects oo = s->oo;
	gfp_t alloc_gfp;

	flags |= s->allocflags;

	/*
	 * Let the initial higher-order allocation fail under memory pressure
	 * so we fall-back to the minimum order allocation.
	 */
	alloc_gfp = (flags | __GFP_NOWARN | __GFP_NORETRY) & ~__GFP_NOFAIL;

	page = FUNC0(alloc_gfp, node, oo);
	if (FUNC11(!page)) {
		oo = s->min;
		/*
		 * Allocation may have failed due to fragmentation.
		 * Try a lower order alloc if possible
		 */
		page = FUNC0(flags, node, oo);
		if (!page)
			return NULL;

		FUNC10(FUNC1(s, FUNC9()), ORDER_FALLBACK);
	}

	if (kmemcheck_enabled
		&& !(s->flags & (SLAB_NOTRACK | DEBUG_DEFAULT_FLAGS))) {
		int pages = 1 << FUNC7(oo);

		FUNC2(page, FUNC7(oo), flags, node);

		/*
		 * Objects from caches that have a constructor don't get
		 * cleared when they're allocated, so we need to do it here.
		 */
		if (s->ctor)
			FUNC4(page, pages);
		else
			FUNC3(page, pages);
	}

	page->objects = FUNC6(oo);
	FUNC5(FUNC8(page),
		(s->flags & SLAB_RECLAIM_ACCOUNT) ?
		NR_SLAB_RECLAIMABLE : NR_SLAB_UNRECLAIMABLE,
		1 << FUNC7(oo));

	return page;
}
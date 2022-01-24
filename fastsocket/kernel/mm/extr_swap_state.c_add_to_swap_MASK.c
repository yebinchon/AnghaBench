#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  val; } ;
typedef  TYPE_1__ swp_entry_t ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int __GFP_HIGH ; 
 int __GFP_NOMEMALLOC ; 
 int __GFP_NOWARN ; 
 int FUNC5 (struct page*,TYPE_1__,int) ; 
 TYPE_1__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(struct page *page)
{
	swp_entry_t entry;
	int err;

	FUNC4(!FUNC0(page));
	FUNC4(!FUNC2(page));

	entry = FUNC6();
	if (!entry.val)
		return 0;

	if (FUNC9(FUNC1(page)))
		if (FUNC9(FUNC7(page))) {
			FUNC8(entry, NULL);
			return 0;
		}

	/*
	 * Radix-tree node allocations from PF_MEMALLOC contexts could
	 * completely exhaust the page allocator. __GFP_NOMEMALLOC
	 * stops emergency reserves from being allocated.
	 *
	 * TODO: this could cause a theoretical memory reclaim
	 * deadlock in the swap out path.
	 */
	/*
	 * Add it to the swap cache and mark it dirty
	 */
	err = FUNC5(page, entry,
			__GFP_HIGH|__GFP_NOMEMALLOC|__GFP_NOWARN);

	if (!err) {	/* Success */
		FUNC3(page);
		return 1;
	} else {	/* -ENOMEM radix-tree allocation failure */
		/*
		 * add_to_swap_cache() doesn't return -EEXIST, so we can safely
		 * clear SWAP_HAS_CACHE flag.
		 */
		FUNC8(entry, NULL);
		return 0;
	}
}
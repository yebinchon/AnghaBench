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
struct address_space {int dummy; } ;
typedef  int /*<<< orphan*/  pgoff_t ;
typedef  int gfp_t ;

/* Variables and functions */
 int EEXIST ; 
 int GFP_RECLAIM_MASK ; 
 struct page* FUNC0 (int) ; 
 int FUNC1 (struct page*,struct address_space*,int /*<<< orphan*/ ,int) ; 
 struct page* FUNC2 (struct address_space*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (int) ; 

struct page *FUNC5(struct address_space *mapping,
		pgoff_t index, gfp_t gfp_mask)
{
	struct page *page;
	int err;
repeat:
	page = FUNC2(mapping, index);
	if (!page) {
		page = FUNC0(gfp_mask);
		if (!page)
			return NULL;
		/*
		 * We want a regular kernel memory (not highmem or DMA etc)
		 * allocation for the radix tree nodes, but we need to honour
		 * the context-specific requirements the caller has asked for.
		 * GFP_RECLAIM_MASK collects those requirements.
		 */
		err = FUNC1(page, mapping, index,
			(gfp_mask & GFP_RECLAIM_MASK));
		if (FUNC4(err)) {
			FUNC3(page);
			page = NULL;
			if (err == -EEXIST)
				goto repeat;
		}
	}
	return page;
}
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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int __GFP_IO ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int gfp_allowed_mask ; 
 scalar_t__ FUNC6 (struct page*) ; 

int FUNC7(struct page *page)
{
	FUNC4(!FUNC0(page));

	if (!FUNC1(page))
		return 0;
	if (FUNC2(page))
		return 0;
	if (FUNC6(page))
		return 0;

	/*
	 * Once hibernation has begun to create its image of memory,
	 * there's a danger that one of the calls to try_to_free_swap()
	 * - most probably a call from __try_to_reclaim_swap() while
	 * hibernation is allocating its own swap pages for the image,
	 * but conceivably even a call from memory reclaim - will free
	 * the swap from a page which has already been recorded in the
	 * image as a clean swapcache page, and then reuse its swap for
	 * another page of the image.  On waking from hibernation, the
	 * original page might be freed under memory pressure, then
	 * later read back in from swap, now with the wrong data.
	 *
	 * Hibernation clears bits from gfp_allowed_mask to prevent
	 * memory reclaim from writing to disk, so check that here.
	 */
	if (!(gfp_allowed_mask & __GFP_IO))
		return 0;

	FUNC5(page);
	FUNC3(page);
	return 1;
}
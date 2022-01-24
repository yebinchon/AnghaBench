#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  val; } ;
typedef  TYPE_1__ swp_entry_t ;
struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int EEXIST ; 
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int FUNC2 (struct page*,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 struct page* FUNC5 (int,struct vm_area_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 struct page* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__,int /*<<< orphan*/ *) ; 
 int FUNC15 (TYPE_1__) ; 
 int /*<<< orphan*/  swapper_space ; 

struct page *FUNC16(swp_entry_t entry, gfp_t gfp_mask,
			struct vm_area_struct *vma, unsigned long addr)
{
	struct page *found_page, *new_page = NULL;
	int err;

	do {
		/*
		 * First check the swap cache.  Since this is normally
		 * called after lookup_swap_cache() failed, re-calling
		 * that would confuse statistics.
		 */
		found_page = FUNC7(&swapper_space, entry.val);
		if (found_page)
			break;

		/*
		 * Get a new page to read into from swap.
		 */
		if (!new_page) {
			new_page = FUNC5(gfp_mask, vma, addr);
			if (!new_page)
				break;		/* Out of memory */
		}

		/*
		 * call radix_tree_preload() while we can wait.
		 */
		err = FUNC11(gfp_mask & GFP_KERNEL);
		if (err)
			break;

		/*
		 * Swap entry may have been freed since our caller observed it.
		 */
		err = FUNC15(entry);
		if (err == -EEXIST) {
			FUNC12();
			/*
			 * We might race against get_swap_page() and stumble
			 * across a SWAP_HAS_CACHE swap_map entry whose page
			 * has not been brought into the swapcache yet, while
			 * the other end is scheduled away waiting on discard
			 * I/O completion at scan_swap_map().
			 *
			 * In order to avoid turning this transitory state
			 * into a permanent loop around this -EEXIST case
			 * if !CONFIG_PREEMPT and the I/O completion happens
			 * to be waiting on the CPU waitqueue where we are now
			 * busy looping, we just conditionally invoke the
			 * scheduler here, if there are some more important
			 * tasks to run.
			 */
			FUNC6();
			continue;
		}
		if (err) {		/* swp entry is obsolete ? */
			FUNC12();
			break;
		}

		/* May fail (-ENOMEM) if radix-tree node allocation failed. */
		FUNC4(new_page);
		FUNC1(new_page);
		err = FUNC2(new_page, entry);
		if (FUNC8(!err)) {
			FUNC12();
			/*
			 * Initiate read into locked page and return.
			 */
			FUNC9(new_page);
			FUNC13(new_page);
			return new_page;
		}
		FUNC12();
		FUNC0(new_page);
		FUNC3(new_page);
		/*
		 * add_to_swap_cache() doesn't return -EEXIST, so we can safely
		 * clear SWAP_HAS_CACHE flag.
		 */
		FUNC14(entry, NULL);
	} while (err != -ENOMEM);

	if (new_page)
		FUNC10(new_page);
	return found_page;
}
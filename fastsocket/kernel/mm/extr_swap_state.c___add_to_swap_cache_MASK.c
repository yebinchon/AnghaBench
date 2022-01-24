#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned long val; } ;
typedef  TYPE_1__ swp_entry_t ;
struct page {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  tree_lock; int /*<<< orphan*/  page_tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int EEXIST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NR_FILE_PAGES ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  add_total ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int FUNC11 (int /*<<< orphan*/ *,unsigned long,struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 TYPE_2__ swapper_space ; 
 int /*<<< orphan*/  total_swapcache_pages ; 
 scalar_t__ FUNC15 (int) ; 

__attribute__((used)) static int FUNC16(struct page *page, swp_entry_t entry)
{
	int error;

	FUNC6(!FUNC2(page));
	FUNC6(FUNC4(page));
	FUNC6(!FUNC3(page));

	FUNC9(page);
	FUNC5(page);
	FUNC12(page, entry.val);

	FUNC13(&swapper_space.tree_lock);
	error = FUNC11(&swapper_space.page_tree, entry.val, page);
	if (FUNC8(!error)) {
		total_swapcache_pages++;
		FUNC7(page, NR_FILE_PAGES);
		FUNC1(add_total);
	}
	FUNC14(&swapper_space.tree_lock);

	if (FUNC15(error)) {
		/*
		 * Only the context which have set SWAP_HAS_CACHE flag
		 * would call add_to_swap_cache().
		 * So add_to_swap_cache() doesn't returns -EEXIST.
		 */
		FUNC6(error == -EEXIST);
		FUNC12(page, 0UL);
		FUNC0(page);
		FUNC10(page);
	}

	return error;
}
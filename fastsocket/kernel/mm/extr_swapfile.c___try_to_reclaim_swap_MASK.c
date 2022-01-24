#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  val; } ;
typedef  TYPE_1__ swp_entry_t ;
struct swap_info_struct {int /*<<< orphan*/  type; } ;
struct page {int dummy; } ;

/* Variables and functions */
 struct page* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  swapper_space ; 
 TYPE_1__ FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 

__attribute__((used)) static int
FUNC6(struct swap_info_struct *si, unsigned long offset)
{
	swp_entry_t entry = FUNC2(si->type, offset);
	struct page *page;
	int ret = 0;

	page = FUNC0(&swapper_space, entry.val);
	if (!page)
		return 0;
	/*
	 * This function is called from scan_swap_map() and it's called
	 * by vmscan.c at reclaiming pages. So, we hold a lock on a page, here.
	 * We have to use trylock for avoiding deadlock. This is a special
	 * case and you should use try_to_free_swap() with explicit lock_page()
	 * in usual operations.
	 */
	if (FUNC4(page)) {
		ret = FUNC3(page);
		FUNC5(page);
	}
	FUNC1(page);
	return ret;
}
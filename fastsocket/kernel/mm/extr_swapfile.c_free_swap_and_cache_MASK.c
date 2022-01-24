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
struct swap_info_struct {int dummy; } ;
struct page {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 scalar_t__ SWAP_HAS_CACHE ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 struct page* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct swap_info_struct*,TYPE_1__,int) ; 
 struct swap_info_struct* FUNC10 (TYPE_1__) ; 
 int /*<<< orphan*/  swap_lock ; 
 int /*<<< orphan*/  swapper_space ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 scalar_t__ FUNC13 () ; 

int FUNC14(swp_entry_t entry)
{
	struct swap_info_struct *p;
	struct page *page = NULL;

	if (FUNC5(entry))
		return 1;

	p = FUNC10(entry);
	if (p) {
		if (FUNC9(p, entry, 1) == SWAP_HAS_CACHE) {
			page = FUNC4(&swapper_space, entry.val);
			if (page && !FUNC11(page)) {
				FUNC6(page);
				page = NULL;
			}
		}
		FUNC8(&swap_lock);
	}
	if (page) {
		/*
		 * Not mapped elsewhere, or swap space full? Free it!
		 * Also recheck PageSwapCache now page is locked (above).
		 */
		if (FUNC0(page) && !FUNC1(page) &&
				(!FUNC7(page) || FUNC13())) {
			FUNC3(page);
			FUNC2(page);
		}
		FUNC12(page);
		FUNC6(page);
	}
	return p != NULL;
}
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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  NR_MLOCK ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int SWAP_MLOCK ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  UNEVICTABLE_PGMUNLOCKED ; 
 int /*<<< orphan*/  UNEVICTABLE_PGSTRANDED ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int FUNC8 (struct page*) ; 

void FUNC9(struct page *page)
{
	FUNC0(!FUNC1(page));

	if (FUNC3(page)) {
		FUNC5(page, NR_MLOCK);
		if (!FUNC6(page)) {
			int ret = FUNC8(page);
			/*
			 * did try_to_unlock() succeed or punt?
			 */
			if (ret != SWAP_MLOCK)
				FUNC4(UNEVICTABLE_PGMUNLOCKED);

			FUNC7(page);
		} else {
			/*
			 * We lost the race.  let try_to_unmap() deal
			 * with it.  At least we get the page state and
			 * mlock stats right.  However, page is still on
			 * the noreclaim list.  We'll fix that up when
			 * the page is eventually freed or we scan the
			 * noreclaim list.
			 */
			if (FUNC2(page))
				FUNC4(UNEVICTABLE_PGSTRANDED);
			else
				FUNC4(UNEVICTABLE_PGMUNLOCKED);
		}
	}
}
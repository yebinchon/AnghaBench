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
struct slob_page {int units; void* free; } ;
typedef  int slobidx_t ;
typedef  void slob_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long PAGE_MASK ; 
 int PAGE_SIZE ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct slob_page*) ; 
 int /*<<< orphan*/  FUNC4 (struct slob_page*) ; 
 int /*<<< orphan*/  FUNC5 (struct slob_page*) ; 
 int /*<<< orphan*/  free_slob_small ; 
 int /*<<< orphan*/  FUNC6 (void*,int,void*) ; 
 int /*<<< orphan*/  FUNC7 (struct slob_page*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 int /*<<< orphan*/  slob_lock ; 
 void* FUNC10 (void*) ; 
 struct slob_page* FUNC11 (void*) ; 
 scalar_t__ FUNC12 (struct slob_page*) ; 
 int FUNC13 (void*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC17(void *block, int size)
{
	struct slob_page *sp;
	slob_t *prev, *next, *b = (slob_t *)block;
	slobidx_t units;
	unsigned long flags;

	if (FUNC16(FUNC2(block)))
		return;
	FUNC0(!size);

	sp = FUNC11(block);
	units = FUNC1(size);

	FUNC14(&slob_lock, flags);

	if (sp->units + units == FUNC1(PAGE_SIZE)) {
		/* Go directly to page allocator. Do not pass slob allocator */
		if (FUNC12(sp))
			FUNC4(sp);
		FUNC15(&slob_lock, flags);
		FUNC3(sp);
		FUNC5(sp);
		FUNC8(b, 0);
		return;
	}

	if (!FUNC12(sp)) {
		/* This slob page is about to become partially free. Easy! */
		sp->units = units;
		sp->free = b;
		FUNC6(b, units,
			(void *)((unsigned long)(b +
					FUNC1(PAGE_SIZE)) & PAGE_MASK));
		FUNC7(sp, &free_slob_small);
		goto out;
	}

	/*
	 * Otherwise the page is already partially free, so find reinsertion
	 * point.
	 */
	sp->units += units;

	if (b < sp->free) {
		if (b + units == sp->free) {
			units += FUNC13(sp->free);
			sp->free = FUNC10(sp->free);
		}
		FUNC6(b, units, sp->free);
		sp->free = b;
	} else {
		prev = sp->free;
		next = FUNC10(prev);
		while (b > next) {
			prev = next;
			next = FUNC10(prev);
		}

		if (!FUNC9(prev) && b + units == next) {
			units += FUNC13(next);
			FUNC6(b, units, FUNC10(next));
		} else
			FUNC6(b, units, next);

		if (prev + FUNC13(prev) == b) {
			units = FUNC13(b) + FUNC13(prev);
			FUNC6(prev, units, FUNC10(b));
		} else
			FUNC6(prev, FUNC13(prev), b);
	}
out:
	FUNC15(&slob_lock, flags);
}
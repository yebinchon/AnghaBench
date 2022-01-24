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
struct page {int /*<<< orphan*/  _count; int /*<<< orphan*/  _mapcount; struct page* first_page; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC8 (struct page*) ; 
 struct page* FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*,unsigned long) ; 
 scalar_t__ FUNC11 (struct page*) ; 
 scalar_t__ FUNC12 (int) ; 
 scalar_t__ FUNC13 (struct page*) ; 
 scalar_t__ FUNC14 (struct page*) ; 
 scalar_t__ FUNC15 (int) ; 

__attribute__((used)) static void FUNC16(struct page *page)
{
	if (FUNC15(FUNC2(page))) {
		/* __split_huge_page_refcount can run under us */
		struct page *page_head = FUNC9(page);
		if (FUNC12(page != page_head &&
			   FUNC11(page_head))) {
			unsigned long flags;

			/*
			 * THP can not break up slab pages so avoid taking
			 * compound_lock().  Slab performs non-atomic bit ops
			 * on page->flags for better performance.  In particular
			 * slab_unlock() in slub used to be a hot path.  It is
			 * still hot on arches that do not support
			 * this_cpu_cmpxchg_double().
			 */
			if (FUNC1(page_head)) {
				if (FUNC2(page)) {
					if (FUNC14(page_head))
						FUNC3(1);

					FUNC6(&page->_mapcount);
					goto skip_lock_tail;
				} else
					goto skip_lock;
			}
			/*
			 * page_head wasn't a dangling pointer but it
			 * may not be a head page anymore by the time
			 * we obtain the lock. That is ok as long as it
			 * can't be freed from under us.
			 */
			flags = FUNC8(page_head);
			if (FUNC15(!FUNC2(page))) {
				/* __split_huge_page_refcount run before us */
				FUNC10(page_head, flags);
skip_lock:
				if (FUNC14(page_head))
					FUNC5(page_head);
out_put_single:
				if (FUNC14(page))
					FUNC5(page);
				return;
			}
			FUNC3(page_head != page->first_page);
			/*
			 * We can release the refcount taken by
			 * get_page_unless_zero() now that
			 * __split_huge_page_refcount() is blocked on
			 * the compound_lock.
			 */
			if (FUNC14(page_head))
				FUNC3(1);
			/* __split_huge_page_refcount will wait now */
			FUNC3(FUNC13(page) <= 0);
			FUNC6(&page->_mapcount);
			FUNC3(FUNC7(&page_head->_count) <= 0);
			FUNC3(FUNC7(&page->_count) != 0);
			FUNC10(page_head, flags);

skip_lock_tail:
			if (FUNC14(page_head)) {
				if (FUNC0(page_head))
					FUNC4(page_head);
				else
					FUNC5(page_head);
			}
		} else {
			/* page_head is a dangling pointer */
			FUNC3(FUNC2(page));
			goto out_put_single;
		}
	} else if (FUNC14(page)) {
		if (FUNC0(page))
			FUNC4(page);
		else
			FUNC5(page);
	}
}
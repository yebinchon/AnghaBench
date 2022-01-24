#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int b_flags; size_t b_page_count; scalar_t__ b_addr; struct page** b_pages; scalar_t__ b_offset; int /*<<< orphan*/  b_lru; } ;
typedef  TYPE_1__ xfs_buf_t ;
typedef  size_t uint ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 int _XBF_KMEM ; 
 int _XBF_PAGES ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,size_t) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  xfs_buf_zone ; 

void
FUNC9(
	xfs_buf_t		*bp)
{
	FUNC6(bp, _RET_IP_);

	FUNC0(FUNC5(&bp->b_lru));

	if (bp->b_flags & _XBF_PAGES) {
		uint		i;

		if (FUNC8(bp))
			FUNC7(bp->b_addr - bp->b_offset,
					bp->b_page_count);

		for (i = 0; i < bp->b_page_count; i++) {
			struct page	*page = bp->b_pages[i];

			FUNC1(page);
		}
	} else if (bp->b_flags & _XBF_KMEM)
		FUNC3(bp->b_addr);
	FUNC2(bp);
	FUNC4(xfs_buf_zone, bp);
}
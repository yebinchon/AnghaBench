#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct xen_memory_reservation {unsigned long nr_extents; int /*<<< orphan*/  extent_start; int /*<<< orphan*/  domid; int /*<<< orphan*/  extent_order; int /*<<< orphan*/  address_bits; } ;
struct page {int dummy; } ;
struct TYPE_2__ {unsigned long current_pages; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  DOMID_SELF ; 
 int /*<<< orphan*/  GFP_BALLOON ; 
 int FUNC2 (int /*<<< orphan*/ ,struct xen_memory_reservation*) ; 
 int FUNC3 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INVALID_P2M_ENTRY ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  XENMEM_decrease_reservation ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (unsigned long) ; 
 struct page* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_1__ balloon_stats ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/ * frame_list ; 
 int /*<<< orphan*/  FUNC11 () ; 
 unsigned long FUNC12 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (struct page*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(unsigned long nr_pages)
{
	unsigned long  pfn, i;
	struct page   *page;
	int            need_sleep = 0;
	int ret;
	struct xen_memory_reservation reservation = {
		.address_bits = 0,
		.extent_order = 0,
		.domid        = DOMID_SELF
	};

	if (nr_pages > FUNC0(frame_list))
		nr_pages = FUNC0(frame_list);

	for (i = 0; i < nr_pages; i++) {
		if ((page = FUNC8(GFP_BALLOON)) == NULL) {
			nr_pages = i;
			need_sleep = 1;
			break;
		}

		pfn = FUNC13(page);
		frame_list[i] = FUNC14(pfn);

		FUNC16(page);

		if (!FUNC4(page)) {
			ret = FUNC3(
				(unsigned long)FUNC7(pfn << PAGE_SHIFT),
				FUNC5(0), 0);
			FUNC1(ret);
                }

	}

	/* Ensure that ballooned highmem pages don't have kmaps. */
	FUNC11();
	FUNC10();

	/* No more mappings: invalidate P2M and add to balloon. */
	for (i = 0; i < nr_pages; i++) {
		pfn = FUNC12(frame_list[i]);
		FUNC6(pfn, INVALID_P2M_ENTRY);
		FUNC9(FUNC15(pfn));
	}

	FUNC17(reservation.extent_start, frame_list);
	reservation.nr_extents   = nr_pages;
	ret = FUNC2(XENMEM_decrease_reservation, &reservation);
	FUNC1(ret != nr_pages);

	balloon_stats.current_pages -= nr_pages;

	return need_sleep;
}
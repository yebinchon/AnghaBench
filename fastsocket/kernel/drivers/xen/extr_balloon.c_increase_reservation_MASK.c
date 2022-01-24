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
struct TYPE_2__ {long current_pages; } ;

/* Variables and functions */
 unsigned long FUNC0 (void**) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  DOMID_SELF ; 
 long FUNC3 (int /*<<< orphan*/ ,struct xen_memory_reservation*) ; 
 int FUNC4 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_KERNEL ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  XENFEAT_auto_translated_physmap ; 
 int /*<<< orphan*/  XENMEM_populate_physmap ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 scalar_t__ FUNC7 (unsigned long) ; 
 struct page* FUNC8 () ; 
 struct page* FUNC9 (struct page*) ; 
 struct page* FUNC10 () ; 
 TYPE_1__ balloon_stats ; 
 void** frame_list ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC13 (struct page*) ; 
 scalar_t__ FUNC14 (unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (unsigned long,void*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(unsigned long nr_pages)
{
	unsigned long  pfn, i;
	struct page   *page;
	long           rc;
	struct xen_memory_reservation reservation = {
		.address_bits = 0,
		.extent_order = 0,
		.domid        = DOMID_SELF
	};

	if (nr_pages > FUNC0(frame_list))
		nr_pages = FUNC0(frame_list);

	page = FUNC8();
	for (i = 0; i < nr_pages; i++) {
		FUNC1(page == NULL);
		frame_list[i] = FUNC13(page);
		page = FUNC9(page);
	}

	FUNC16(reservation.extent_start, frame_list);
	reservation.nr_extents = nr_pages;
	rc = FUNC3(XENMEM_populate_physmap, &reservation);
	if (rc < 0)
		goto out;

	for (i = 0; i < rc; i++) {
		page = FUNC10();
		FUNC1(page == NULL);

		pfn = FUNC13(page);
		FUNC1(!FUNC17(XENFEAT_auto_translated_physmap) &&
		       FUNC14(pfn));

		FUNC15(pfn, frame_list[i]);

		/* Link back into the page tables if not highmem. */
		if (!FUNC5(page)) {
			int ret;
			ret = FUNC4(
				(unsigned long)FUNC7(pfn << PAGE_SHIFT),
				FUNC12(frame_list[i], PAGE_KERNEL),
				0);
			FUNC1(ret);
		}

		/* Relinquish the page back to the allocator. */
		FUNC2(page);
		FUNC11(page);
		FUNC6(page);
	}

	balloon_stats.current_pages += rc;

 out:
	return rc < 0 ? rc : rc != nr_pages;
}
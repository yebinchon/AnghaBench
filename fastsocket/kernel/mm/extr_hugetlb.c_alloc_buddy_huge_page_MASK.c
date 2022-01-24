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
struct hstate {scalar_t__ order; scalar_t__ surplus_huge_pages; scalar_t__ nr_overcommit_huge_pages; int /*<<< orphan*/  nr_huge_pages; int /*<<< orphan*/ * surplus_huge_pages_node; int /*<<< orphan*/ * nr_huge_pages_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  HTLB_BUDDY_PGALLOC ; 
 int /*<<< orphan*/  HTLB_BUDDY_PGALLOC_FAIL ; 
 scalar_t__ MAX_ORDER ; 
 int NUMA_NO_NODE ; 
 int __GFP_COMP ; 
 int __GFP_NOWARN ; 
 int __GFP_REPEAT ; 
 int __GFP_THISNODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*,int /*<<< orphan*/ ) ; 
 struct page* FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct page* FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 int /*<<< orphan*/  free_huge_page ; 
 int htlb_alloc_mask ; 
 int /*<<< orphan*/  FUNC5 (struct hstate*) ; 
 int /*<<< orphan*/  hugetlb_lock ; 
 unsigned int FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct page *FUNC10(struct hstate *h, int nid)
{
	struct page *page;
	unsigned int r_nid;

	if (h->order >= MAX_ORDER)
		return NULL;

	/*
	 * Assume we will successfully allocate the surplus page to
	 * prevent racing processes from causing the surplus to exceed
	 * overcommit
	 *
	 * This however introduces a different race, where a process B
	 * tries to grow the static hugepage pool while alloc_pages() is
	 * called by process A. B will only examine the per-node
	 * counters in determining if surplus huge pages can be
	 * converted to normal huge pages in adjust_pool_surplus(). A
	 * won't be able to increment the per-node counter, until the
	 * lock is dropped by B, but B doesn't drop hugetlb_lock until
	 * no more huge pages can be converted from surplus to normal
	 * state (and doesn't try to convert again). Thus, we have a
	 * case where a surplus huge page exists, the pool is grown, and
	 * the surplus huge page still exists after, even though it
	 * should just have been converted to a normal huge page. This
	 * does not leak memory, though, as the hugepage will be freed
	 * once it is out of use. It also does not allow the counters to
	 * go out of whack in adjust_pool_surplus() as we don't modify
	 * the node values until we've gotten the hugepage and only the
	 * per-node value is checked there.
	 */
	FUNC8(&hugetlb_lock);
	if (h->surplus_huge_pages >= h->nr_overcommit_huge_pages) {
		FUNC9(&hugetlb_lock);
		return NULL;
	} else {
		h->nr_huge_pages++;
		h->surplus_huge_pages++;
	}
	FUNC9(&hugetlb_lock);

	if (nid == NUMA_NO_NODE)
		page = FUNC2(htlb_alloc_mask|__GFP_COMP|
				   __GFP_REPEAT|__GFP_NOWARN,
				   FUNC5(h));
	else
		page = FUNC3(nid,
			htlb_alloc_mask|__GFP_COMP|__GFP_THISNODE|
			__GFP_REPEAT|__GFP_NOWARN, FUNC5(h));

	if (page && FUNC4(page)) {
		FUNC1(page, FUNC5(h));
		return NULL;
	}

	FUNC8(&hugetlb_lock);
	if (page) {
		r_nid = FUNC6(page);
		FUNC7(page, free_huge_page);
		/*
		 * We incremented the global counters already
		 */
		h->nr_huge_pages_node[r_nid]++;
		h->surplus_huge_pages_node[r_nid]++;
		FUNC0(HTLB_BUDDY_PGALLOC);
	} else {
		h->nr_huge_pages--;
		h->surplus_huge_pages--;
		FUNC0(HTLB_BUDDY_PGALLOC_FAIL);
	}
	FUNC9(&hugetlb_lock);

	return page;
}
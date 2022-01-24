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
struct page {int /*<<< orphan*/  lru; int /*<<< orphan*/ * mapping; } ;
struct hugepage_subpool {int dummy; } ;
struct hstate {scalar_t__* surplus_huge_pages_node; int /*<<< orphan*/  surplus_huge_pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ MAX_ORDER ; 
 int /*<<< orphan*/  FUNC2 (struct hstate*,struct page*) ; 
 scalar_t__ FUNC3 (struct hstate*) ; 
 int /*<<< orphan*/  FUNC4 (struct hugepage_subpool*,int) ; 
 int /*<<< orphan*/  hugetlb_lock ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 struct hstate* FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 scalar_t__ FUNC8 (struct page*) ; 
 int FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct hstate*,struct page*) ; 

__attribute__((used)) static void FUNC14(struct page *page)
{
	/*
	 * Can't pass hstate in here because it is called from the
	 * compound page destructor.
	 */
	struct hstate *h = FUNC6(page);
	int nid = FUNC9(page);
	struct hugepage_subpool *spool =
		(struct hugepage_subpool *)FUNC8(page);

	FUNC10(page, 0);
	page->mapping = NULL;
	FUNC0(FUNC5(page));
	FUNC0(FUNC7(page));
	FUNC1(&page->lru);

	FUNC11(&hugetlb_lock);
	if (h->surplus_huge_pages_node[nid] && FUNC3(h) < MAX_ORDER) {
		FUNC13(h, page);
		h->surplus_huge_pages--;
		h->surplus_huge_pages_node[nid]--;
	} else {
		FUNC2(h, page);
	}
	FUNC12(&hugetlb_lock);
	FUNC4(spool, 1);
}
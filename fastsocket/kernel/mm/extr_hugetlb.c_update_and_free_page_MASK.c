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
struct page {int flags; } ;
struct hstate {scalar_t__ order; int /*<<< orphan*/ * nr_huge_pages_node; int /*<<< orphan*/  nr_huge_pages; } ;

/* Variables and functions */
 scalar_t__ MAX_ORDER ; 
 int PG_active ; 
 int PG_dirty ; 
 int PG_error ; 
 int PG_locked ; 
 int PG_private ; 
 int PG_referenced ; 
 int PG_reserved ; 
 int PG_writeback ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct hstate*) ; 
 size_t FUNC4 (struct page*) ; 
 int FUNC5 (struct hstate*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 

__attribute__((used)) static void FUNC8(struct hstate *h, struct page *page)
{
	int i;

	FUNC0(h->order >= MAX_ORDER);

	h->nr_huge_pages--;
	h->nr_huge_pages_node[FUNC4(page)]--;
	for (i = 0; i < FUNC5(h); i++) {
		page[i].flags &= ~(1 << PG_locked | 1 << PG_error | 1 << PG_referenced |
				1 << PG_dirty | 1 << PG_active | 1 << PG_reserved |
				1 << PG_private | 1<< PG_writeback);
	}
	FUNC6(page, NULL);
	FUNC7(page);
	FUNC2(page);
	FUNC1(page, FUNC3(h));
}
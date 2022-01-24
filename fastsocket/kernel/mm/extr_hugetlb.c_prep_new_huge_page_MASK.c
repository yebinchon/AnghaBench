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
struct hstate {int /*<<< orphan*/ * nr_huge_pages_node; int /*<<< orphan*/  nr_huge_pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  free_huge_page ; 
 int /*<<< orphan*/  hugetlb_lock ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct hstate *h, struct page *page, int nid)
{
	FUNC1(page, free_huge_page);
	FUNC2(&hugetlb_lock);
	h->nr_huge_pages++;
	h->nr_huge_pages_node[nid]++;
	FUNC3(&hugetlb_lock);
	FUNC0(page); /* free it into the hugepage allocator */
}
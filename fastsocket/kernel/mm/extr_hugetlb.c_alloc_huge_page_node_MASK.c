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
struct hstate {int dummy; } ;

/* Variables and functions */
 struct page* FUNC0 (struct hstate*,int) ; 
 struct page* FUNC1 (struct hstate*,int) ; 
 int /*<<< orphan*/  hugetlb_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct page *FUNC4(struct hstate *h, int nid)
{
	struct page *page;

	FUNC2(&hugetlb_lock);
	page = FUNC1(h, nid);
	FUNC3(&hugetlb_lock);

	if (!page)
		page = FUNC0(h, nid);

	return page;
}
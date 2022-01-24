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
struct hstate {scalar_t__ order; } ;

/* Variables and functions */
 scalar_t__ MAX_ORDER ; 
 int __GFP_COMP ; 
 int __GFP_NOWARN ; 
 int __GFP_REPEAT ; 
 int __GFP_THISNODE ; 
 int /*<<< orphan*/  FUNC0 (struct page*,int /*<<< orphan*/ ) ; 
 struct page* FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int htlb_alloc_mask ; 
 int /*<<< orphan*/  FUNC3 (struct hstate*) ; 
 int /*<<< orphan*/  FUNC4 (struct hstate*,struct page*,int) ; 

__attribute__((used)) static struct page *FUNC5(struct hstate *h, int nid)
{
	struct page *page;

	if (h->order >= MAX_ORDER)
		return NULL;

	page = FUNC1(nid,
		htlb_alloc_mask|__GFP_COMP|__GFP_THISNODE|
						__GFP_REPEAT|__GFP_NOWARN,
		FUNC3(h));
	if (page) {
		if (FUNC2(page)) {
			FUNC0(page, FUNC3(h));
			return NULL;
		}
		FUNC4(h, page, nid);
	}

	return page;
}
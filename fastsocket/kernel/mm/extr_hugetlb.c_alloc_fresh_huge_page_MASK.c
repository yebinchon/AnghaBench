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
typedef  int /*<<< orphan*/  nodemask_t ;

/* Variables and functions */
 int /*<<< orphan*/  HTLB_BUDDY_PGALLOC ; 
 int /*<<< orphan*/  HTLB_BUDDY_PGALLOC_FAIL ; 
 struct page* FUNC0 (struct hstate*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hstate*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct hstate *h, nodemask_t *nodes_allowed)
{
	struct page *page;
	int start_nid;
	int next_nid;
	int ret = 0;

	start_nid = FUNC2(h, nodes_allowed);
	next_nid = start_nid;

	do {
		page = FUNC0(h, next_nid);
		if (page) {
			ret = 1;
			break;
		}
		next_nid = FUNC2(h, nodes_allowed);
	} while (next_nid != start_nid);

	if (ret)
		FUNC1(HTLB_BUDDY_PGALLOC);
	else
		FUNC1(HTLB_BUDDY_PGALLOC_FAIL);

	return ret;
}
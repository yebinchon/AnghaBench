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
struct hstate {int /*<<< orphan*/  free_huge_pages_node; } ;

/* Variables and functions */
 int ENOMEM ; 
 long FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct hstate*,long) ; 
 int /*<<< orphan*/  hugetlb_lock ; 
 int /*<<< orphan*/  FUNC2 (struct hstate*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct hstate *h, long delta)
{
	int ret = -ENOMEM;

	FUNC3(&hugetlb_lock);
	/*
	 * When cpuset is configured, it breaks the strict hugetlb page
	 * reservation as the accounting is done on a global variable. Such
	 * reservation is completely rubbish in the presence of cpuset because
	 * the reservation is not checked against page availability for the
	 * current cpuset. Application can still potentially OOM'ed by kernel
	 * with lack of free htlb page in cpuset that the task is in.
	 * Attempt to enforce strict accounting with cpuset is almost
	 * impossible (or too ugly) because cpuset is too fluid that
	 * task or memory node can be dynamically moved between cpusets.
	 *
	 * The change of semantics for shared hugetlb mapping with cpuset is
	 * undesirable. However, in order to preserve some of the semantics,
	 * we fall back to check against current free page availability as
	 * a best attempt and hopefully to minimize the impact of changing
	 * semantics that cpuset has.
	 */
	if (delta > 0) {
		if (FUNC1(h, delta) < 0)
			goto out;

		if (delta > FUNC0(h->free_huge_pages_node)) {
			FUNC2(h, delta);
			goto out;
		}
	}

	ret = 0;
	if (delta < 0)
		FUNC2(h, (unsigned long) -delta);

out:
	FUNC4(&hugetlb_lock);
	return ret;
}
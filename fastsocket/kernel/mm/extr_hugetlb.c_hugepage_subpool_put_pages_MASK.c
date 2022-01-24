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
struct hugepage_subpool {long used_hpages; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hugepage_subpool*) ; 

__attribute__((used)) static void FUNC2(struct hugepage_subpool *spool,
				       long delta)
{
	if (!spool)
		return;

	FUNC0(&spool->lock);
	spool->used_hpages -= delta;
	/* If hugetlbfs_put_super couldn't free spool due to
	* an outstanding quota reference, free it now. */
	FUNC1(spool);
}
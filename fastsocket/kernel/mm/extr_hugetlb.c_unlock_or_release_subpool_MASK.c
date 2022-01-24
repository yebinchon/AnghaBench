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
struct hugepage_subpool {scalar_t__ count; scalar_t__ used_hpages; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hugepage_subpool*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC2(struct hugepage_subpool *spool)
{
	bool free = (spool->count == 0) && (spool->used_hpages == 0);

	FUNC1(&spool->lock);

	/* If no pages are used, and no other handles to the subpool
	 * remain, free the subpool the subpool remain */
	if (free)
		FUNC0(spool);
}
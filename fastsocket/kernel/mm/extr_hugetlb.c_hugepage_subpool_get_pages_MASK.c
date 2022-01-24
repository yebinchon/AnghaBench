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
struct hugepage_subpool {scalar_t__ used_hpages; scalar_t__ max_hpages; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct hugepage_subpool *spool,
				      long delta)
{
	int ret = 0;

	if (!spool)
		return 0;

	FUNC0(&spool->lock);
	if ((spool->used_hpages + delta) <= spool->max_hpages) {
		spool->used_hpages += delta;
	} else {
		ret = -ENOMEM;
	}
	FUNC1(&spool->lock);

	return ret;
}
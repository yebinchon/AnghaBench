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
struct p9_idpool {int /*<<< orphan*/  lock; int /*<<< orphan*/  pool; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  P9_DEBUG_MUX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,struct p9_idpool*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct p9_idpool*,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC5(struct p9_idpool *p)
{
	int i = 0;
	int error;
	unsigned long flags;

retry:
	if (FUNC2(&p->pool, GFP_KERNEL) == 0)
		return 0;

	FUNC3(&p->lock, flags);

	/* no need to store exactly p, we just need something non-null */
	error = FUNC1(&p->pool, p, &i);
	FUNC4(&p->lock, flags);

	if (error == -EAGAIN)
		goto retry;
	else if (error)
		return -1;

	FUNC0(P9_DEBUG_MUX, " id %d pool %p\n", i, p);
	return i;
}
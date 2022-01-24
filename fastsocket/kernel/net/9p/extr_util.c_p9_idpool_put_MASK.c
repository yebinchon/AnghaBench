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
 int /*<<< orphan*/  P9_DEBUG_MUX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,struct p9_idpool*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(int id, struct p9_idpool *p)
{
	unsigned long flags;

	FUNC0(P9_DEBUG_MUX, " id %d pool %p\n", id, p);

	FUNC2(&p->lock, flags);
	FUNC1(&p->pool, id);
	FUNC3(&p->lock, flags);
}
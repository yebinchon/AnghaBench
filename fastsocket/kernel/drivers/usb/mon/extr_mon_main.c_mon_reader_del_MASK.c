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
struct mon_reader {int /*<<< orphan*/  r_link; } ;
struct mon_bus {scalar_t__ nreaders; int /*<<< orphan*/  ref; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mon_bus_drop ; 
 int /*<<< orphan*/  FUNC2 (struct mon_bus*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct mon_bus *mbus, struct mon_reader *r)
{
	unsigned long flags;

	FUNC3(&mbus->lock, flags);
	FUNC1(&r->r_link);
	--mbus->nreaders;
	if (mbus->nreaders == 0)
		FUNC2(mbus);
	FUNC4(&mbus->lock, flags);

	FUNC0(&mbus->ref, mon_bus_drop);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct prop_descriptor {int index; int /*<<< orphan*/  mutex; TYPE_1__* pg; } ;
struct TYPE_2__ {int shift; int /*<<< orphan*/  events; } ;

/* Variables and functions */
 int PROP_MAX_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8(struct prop_descriptor *pd, int shift)
{
	int index;
	int offset;
	u64 events;
	unsigned long flags;

	if (shift > PROP_MAX_SHIFT)
		shift = PROP_MAX_SHIFT;

	FUNC2(&pd->mutex);

	index = pd->index ^ 1;
	offset = pd->pg[pd->index].shift - shift;
	if (!offset)
		goto out;

	pd->pg[index].shift = shift;

	FUNC1(flags);
	events = FUNC5(&pd->pg[pd->index].events);
	if (offset < 0)
		events <<= -offset;
	else
		events >>= offset;
	FUNC4(&pd->pg[index].events, events);

	/*
	 * ensure the new pg is fully written before the switch
	 */
	FUNC6();
	pd->index = index;
	FUNC0(flags);

	FUNC7();

out:
	FUNC3(&pd->mutex);
}
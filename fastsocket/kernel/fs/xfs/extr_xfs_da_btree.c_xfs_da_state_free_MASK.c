#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ bp; } ;
struct TYPE_10__ {int active; TYPE_2__* blk; } ;
struct TYPE_11__ {TYPE_1__ extrablk; scalar_t__ extravalid; TYPE_3__ path; } ;
typedef  TYPE_4__ xfs_da_state_t ;
struct TYPE_9__ {scalar_t__ bp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  xfs_da_state_zone ; 

void
FUNC4(xfs_da_state_t *state)
{
	int	i;

	FUNC3(state);
	for (i = 0; i < state->path.active; i++) {
		if (state->path.blk[i].bp)
			FUNC2(state->path.blk[i].bp);
	}
	if (state->extravalid && state->extrablk.bp)
		FUNC2(state->extrablk.bp);
#ifdef DEBUG
	memset((char *)state, 0, sizeof(*state));
#endif /* DEBUG */
	FUNC0(xfs_da_state_zone, state);
}
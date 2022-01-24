#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_4__ {int object_number; unsigned int interrupt_interval_lsw; unsigned int interrupt_interval_msw; int /*<<< orphan*/  cmd_id; } ;
typedef  TYPE_1__ audpp_cmd_avsync ;
struct TYPE_5__ {int avsync_mask; int* avsync; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDPP_CMD_AVSYNC ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 TYPE_2__ the_audpp_state ; 

void FUNC4(int id, unsigned rate)
{
	unsigned long flags;
	audpp_cmd_avsync cmd;

	if (FUNC0(id))
		return;

	FUNC3(flags);
	if (rate)
		the_audpp_state.avsync_mask |= (1 << id);
	else
		the_audpp_state.avsync_mask &= (~(1 << id));
	the_audpp_state.avsync[0] &= the_audpp_state.avsync_mask;
	FUNC2(flags);

	cmd.cmd_id = AUDPP_CMD_AVSYNC;
	cmd.object_number = id;
	cmd.interrupt_interval_lsw = rate;
	cmd.interrupt_interval_msw = rate >> 16;
	FUNC1(&cmd, sizeof(cmd));
}
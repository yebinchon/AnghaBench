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
struct uwb_rc_evt_get_ie {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  wCommand; int /*<<< orphan*/  bCommandType; } ;
struct uwb_rc_cmd_set_ie {TYPE_1__ rccb; } ;
struct uwb_rc {int ies_capacity; int /*<<< orphan*/  ies_mutex; struct uwb_rc_cmd_set_ie* ies; } ;

/* Variables and functions */
 int /*<<< orphan*/  UWB_RC_CET_GENERAL ; 
 int /*<<< orphan*/  UWB_RC_CMD_SET_IE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct uwb_rc*,struct uwb_rc_evt_get_ie**) ; 

int FUNC4(struct uwb_rc *uwb_rc)
{
	struct uwb_rc_evt_get_ie *ie_info = NULL;
	int capacity;

	capacity = FUNC3(uwb_rc, &ie_info);
	if (capacity < 0)
		return capacity;

	FUNC1(&uwb_rc->ies_mutex);

	uwb_rc->ies = (struct uwb_rc_cmd_set_ie *)ie_info;
	uwb_rc->ies->rccb.bCommandType = UWB_RC_CET_GENERAL;
	uwb_rc->ies->rccb.wCommand = FUNC0(UWB_RC_CMD_SET_IE);
	uwb_rc->ies_capacity = capacity;

	FUNC2(&uwb_rc->ies_mutex);

	return 0;
}
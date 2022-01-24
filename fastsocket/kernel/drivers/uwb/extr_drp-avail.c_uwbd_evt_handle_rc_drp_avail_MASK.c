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
struct TYPE_2__ {int ie_valid; int /*<<< orphan*/  global; } ;
struct uwb_rc {int /*<<< orphan*/  rsvs_mutex; TYPE_1__ drp_avail; } ;
struct uwb_event {struct uwb_rc* rc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UWB_NUM_MAS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bmp ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct uwb_rc*) ; 
 int /*<<< orphan*/  FUNC5 (struct uwb_rc*) ; 
 int FUNC6 (struct uwb_event*,int /*<<< orphan*/ ) ; 

int FUNC7(struct uwb_event *evt)
{
	int result;
	struct uwb_rc *rc = evt->rc;
	FUNC0(bmp, UWB_NUM_MAS);

	result = FUNC6(evt, bmp);
	if (result < 0)
		return result;

	FUNC2(&rc->rsvs_mutex);
	FUNC1(rc->drp_avail.global, bmp, UWB_NUM_MAS);
	rc->drp_avail.ie_valid = false;
	FUNC4(rc);
	FUNC3(&rc->rsvs_mutex);

	FUNC5(rc);

	return 0;
}
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
struct uwb_rc {int dummy; } ;
struct uwb_event {int /*<<< orphan*/  message; int /*<<< orphan*/  type; int /*<<< orphan*/  ts_jiffies; int /*<<< orphan*/  rc; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  UWB_EVT_MSG_RESET ; 
 int /*<<< orphan*/  UWB_EVT_TYPE_MSG ; 
 int /*<<< orphan*/  FUNC0 (struct uwb_rc*) ; 
 int /*<<< orphan*/  jiffies ; 
 struct uwb_event* FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uwb_event*) ; 

void FUNC4(struct uwb_rc *rc)
{
	struct uwb_event *evt;

	evt = FUNC1(sizeof(struct uwb_event), GFP_ATOMIC);
	if (FUNC2(evt == NULL))
		return;

	evt->rc = FUNC0(rc);	/* will be put by uwbd's uwbd_event_handle() */
	evt->ts_jiffies = jiffies;
	evt->type = UWB_EVT_TYPE_MSG;
	evt->message = UWB_EVT_MSG_RESET;

	FUNC3(evt);
}
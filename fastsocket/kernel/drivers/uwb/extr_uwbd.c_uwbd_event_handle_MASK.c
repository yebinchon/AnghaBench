#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct uwb_rc {TYPE_2__ uwb_dev; scalar_t__ ready; } ;
struct TYPE_3__ {int /*<<< orphan*/  rceb; } ;
struct uwb_event {int type; TYPE_1__ notif; struct uwb_rc* rc; } ;

/* Variables and functions */
#define  UWB_EVT_TYPE_MSG 129 
#define  UWB_EVT_TYPE_NOTIF 128 
 int /*<<< orphan*/  FUNC0 (struct uwb_rc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uwb_event*) ; 
 int FUNC4 (struct uwb_event*) ; 

__attribute__((used)) static void FUNC5(struct uwb_event *evt)
{
	struct uwb_rc *rc;
	int should_keep;

	rc = evt->rc;

	if (rc->ready) {
		switch (evt->type) {
		case UWB_EVT_TYPE_NOTIF:
			should_keep = FUNC4(evt);
			if (should_keep <= 0)
				FUNC2(evt->notif.rceb);
			break;
		case UWB_EVT_TYPE_MSG:
			FUNC3(evt);
			break;
		default:
			FUNC1(&rc->uwb_dev.dev, "UWBD: invalid event type %d\n", evt->type);
			break;
		}
	}

	FUNC0(rc);	/* for the __uwb_rc_get() in uwb_rc_notif_cb() */
}
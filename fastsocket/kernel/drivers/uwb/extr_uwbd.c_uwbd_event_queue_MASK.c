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
struct TYPE_4__ {scalar_t__ pid; int /*<<< orphan*/  event_list_lock; int /*<<< orphan*/  wq; int /*<<< orphan*/  event_list; } ;
struct uwb_rc {TYPE_2__ uwbd; } ;
struct TYPE_3__ {struct uwb_event* rceb; } ;
struct uwb_event {scalar_t__ type; TYPE_1__ notif; struct uwb_rc* rc; int /*<<< orphan*/  list_node; } ;

/* Variables and functions */
 scalar_t__ UWB_EVT_TYPE_NOTIF ; 
 int /*<<< orphan*/  FUNC0 (struct uwb_rc*) ; 
 int /*<<< orphan*/  FUNC1 (struct uwb_event*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct uwb_event *evt)
{
	struct uwb_rc *rc = evt->rc;
	unsigned long flags;

	FUNC3(&rc->uwbd.event_list_lock, flags);
	if (rc->uwbd.pid != 0) {
		FUNC2(&evt->list_node, &rc->uwbd.event_list);
		FUNC5(&rc->uwbd.wq);
	} else {
		FUNC0(evt->rc);
		if (evt->type == UWB_EVT_TYPE_NOTIF)
			FUNC1(evt->notif.rceb);
		FUNC1(evt);
	}
	FUNC4(&rc->uwbd.event_list_lock, flags);
	return;
}
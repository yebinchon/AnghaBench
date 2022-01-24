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
struct uwb_rc {int dummy; } ;
struct TYPE_2__ {struct uwb_rc* rc; } ;
struct i1480u {int /*<<< orphan*/  usb_dev; TYPE_1__ wlp; int /*<<< orphan*/  notif_urb; int /*<<< orphan*/  usb_iface; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct uwb_rc*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC6(struct i1480u *i1480u)
{
	struct uwb_rc *rc = i1480u->wlp.rc;
	FUNC3(i1480u->usb_iface, NULL);
#ifdef i1480u_FLOW_CONTROL
	usb_kill_urb(i1480u->notif_urb);
	usb_free_urb(i1480u->notif_urb);
#endif
	FUNC5(&i1480u->wlp);
	FUNC4(rc);
	FUNC2(i1480u->usb_dev);
}
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
struct TYPE_2__ {int* port_status; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int USB_PORT_FEAT_C_CONNECTION ; 
 int USB_PORT_STAT_CONNECTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_1__* the_controller ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

void FUNC3(int rhport)
{
	unsigned long flags;

	FUNC2("rh_port_disconnect %d\n", rhport);

	FUNC0(&the_controller->lock, flags);
	/* stop_activity(dum, driver); */
	the_controller->port_status[rhport] &= ~USB_PORT_STAT_CONNECTION;
	the_controller->port_status[rhport] |=
					(1 << USB_PORT_FEAT_C_CONNECTION);


	/* not yet complete the disconnection
	 * spin_lock(&vdev->ud.lock);
	 * vdev->ud.status = VHC_ST_DISCONNECT;
	 * spin_unlock(&vdev->ud.lock); */

	FUNC1(&the_controller->lock, flags);
}
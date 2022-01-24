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
struct xenbus_device {int state; int /*<<< orphan*/  nodename; } ;
typedef  enum xenbus_state { ____Placeholder_xenbus_state } xenbus_state ;

/* Variables and functions */
 int /*<<< orphan*/  XBT_NIL ; 
 int XenbusStateClosing ; 
 int /*<<< orphan*/  FUNC0 (struct xenbus_device*,int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int*) ; 

int FUNC3(struct xenbus_device *dev, enum xenbus_state state)
{
	/* We check whether the state is currently set to the given value, and
	   if not, then the state is set.  We don't want to unconditionally
	   write the given state, because we don't want to fire watches
	   unnecessarily.  Furthermore, if the node has gone, we don't write
	   to it, as the device will be tearing down, and we don't want to
	   resurrect that directory.

	   Note that, because of this cached value of our state, this function
	   will not work inside a Xenstore transaction (something it was
	   trying to in the past) because dev->state would not get reset if
	   the transaction was aborted.

	 */

	int current_state;
	int err;

	if (state == dev->state)
		return 0;

	err = FUNC2(XBT_NIL, dev->nodename, "state", "%d",
			   &current_state);
	if (err != 1)
		return 0;

	err = FUNC1(XBT_NIL, dev->nodename, "state", "%d", state);
	if (err) {
		if (state != XenbusStateClosing) /* Avoid looping */
			FUNC0(dev, err, "writing new state");
		return err;
	}

	dev->state = state;

	return 0;
}
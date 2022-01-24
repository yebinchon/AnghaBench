#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  release; int /*<<< orphan*/ * bus; } ;
struct xenbus_device {int state; char* nodename; char* devicetype; TYPE_1__ dev; int /*<<< orphan*/  down; } ;
struct xen_bus_type {int (* get_bus_id ) (char*,char*) ;int /*<<< orphan*/  bus; } ;
typedef  enum xenbus_state { ____Placeholder_xenbus_state } xenbus_state ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int XEN_BUS_ID_SIZE ; 
 int XenbusStateInitialising ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct xenbus_device*) ; 
 struct xenbus_device* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int FUNC6 (char const*) ; 
 int FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  xenbus_dev_release ; 
 int FUNC8 (char const*) ; 

int FUNC9(struct xen_bus_type *bus,
		      const char *type,
		      const char *nodename)
{
	char devname[XEN_BUS_ID_SIZE];
	int err;
	struct xenbus_device *xendev;
	size_t stringlen;
	char *tmpstring;

	enum xenbus_state state = FUNC8(nodename);

	if (state != XenbusStateInitialising) {
		/* Device is not new, so ignore it.  This can happen if a
		   device is going away after switching to Closed.  */
		return 0;
	}

	stringlen = FUNC6(nodename) + 1 + FUNC6(type) + 1;
	xendev = FUNC4(sizeof(*xendev) + stringlen, GFP_KERNEL);
	if (!xendev)
		return -ENOMEM;

	xendev->state = XenbusStateInitialising;

	/* Copy the strings into the extra space. */

	tmpstring = (char *)(xendev + 1);
	FUNC5(tmpstring, nodename);
	xendev->nodename = tmpstring;

	tmpstring += FUNC6(tmpstring) + 1;
	FUNC5(tmpstring, type);
	xendev->devicetype = tmpstring;
	FUNC2(&xendev->down);

	xendev->dev.bus = &bus->bus;
	xendev->dev.release = xenbus_dev_release;

	err = bus->get_bus_id(devname, xendev->nodename);
	if (err)
		goto fail;

	FUNC0(&xendev->dev, devname);

	/* Register with generic device framework. */
	err = FUNC1(&xendev->dev);
	if (err)
		goto fail;

	return 0;
fail:
	FUNC3(xendev);
	return err;
}
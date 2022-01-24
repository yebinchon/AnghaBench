#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ status; } ;
struct TYPE_6__ {TYPE_1__ power; int /*<<< orphan*/  driver; } ;
struct usb_interface {TYPE_2__ dev; scalar_t__ needs_binding; } ;
struct usb_driver {int dummy; } ;

/* Variables and functions */
 scalar_t__ DPM_ON ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int) ; 
 int FUNC2 (TYPE_2__*) ; 
 struct usb_driver* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_driver*,struct usb_interface*) ; 

void FUNC5(struct usb_interface *intf)
{
	int rc;

	/* Delayed unbind of an existing driver */
	if (intf->dev.driver) {
		struct usb_driver *driver =
				FUNC3(intf->dev.driver);

		FUNC0(&intf->dev, "forced unbind\n");
		FUNC4(driver, intf);
	}

	/* Try to rebind the interface */
	if (intf->dev.power.status == DPM_ON) {
		intf->needs_binding = 0;
		rc = FUNC2(&intf->dev);
		if (rc < 0)
			FUNC1(&intf->dev, "rebind failed: %d\n", rc);
	}
}
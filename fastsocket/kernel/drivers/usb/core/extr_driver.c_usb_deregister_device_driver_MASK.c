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
struct TYPE_2__ {int /*<<< orphan*/  driver; } ;
struct usb_device_driver {TYPE_1__ drvwrap; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usbcore_name ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(struct usb_device_driver *udriver)
{
	FUNC1("%s: deregistering device driver %s\n",
			usbcore_name, udriver->name);

	FUNC0(&udriver->drvwrap.driver);
	FUNC2();
}
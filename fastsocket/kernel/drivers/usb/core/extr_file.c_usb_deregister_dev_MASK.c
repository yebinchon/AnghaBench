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
struct usb_interface {int minor; int /*<<< orphan*/ * usb_dev; } ;
struct usb_class_driver {int minor_base; char* name; } ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_2__ {int /*<<< orphan*/  class; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  USB_MAJOR ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  minor_rwsem ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__* usb_class ; 
 int /*<<< orphan*/ ** usb_minors ; 

void FUNC7(struct usb_interface *intf,
			struct usb_class_driver *class_driver)
{
	int minor_base = class_driver->minor_base;
	char name[20];

#ifdef CONFIG_USB_DYNAMIC_MINORS
	minor_base = 0;
#endif

	if (intf->minor == -1)
		return;

	FUNC1 ("removing %d minor", intf->minor);

	FUNC4(&minor_rwsem);
	usb_minors[intf->minor] = NULL;
	FUNC6(&minor_rwsem);

	FUNC5(name, sizeof(name), class_driver->name, intf->minor - minor_base);
	FUNC3(usb_class->class, FUNC0(USB_MAJOR, intf->minor));
	intf->usb_dev = NULL;
	intf->minor = -1;
	FUNC2();
}
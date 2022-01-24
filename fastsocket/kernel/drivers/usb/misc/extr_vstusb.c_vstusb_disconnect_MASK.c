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
struct vstusb_device {int /*<<< orphan*/  kref; int /*<<< orphan*/  lock; int /*<<< orphan*/  submitted; scalar_t__ present; } ;
struct usb_interface {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 struct vstusb_device* FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  usb_vstusb_class ; 
 int /*<<< orphan*/  vstusb_delete ; 

__attribute__((used)) static void FUNC7(struct usb_interface *intf)
{
	struct vstusb_device *vstdev = FUNC4(intf);

	FUNC3(intf, &usb_vstusb_class);
	FUNC6(intf, NULL);

	if (vstdev) {

		FUNC1(&vstdev->lock);
		vstdev->present = 0;

		FUNC5(&vstdev->submitted);

		FUNC2(&vstdev->lock);

		FUNC0(&vstdev->kref, vstusb_delete);
	}

}
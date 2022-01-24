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
struct usb_skel {int /*<<< orphan*/  kref; int /*<<< orphan*/  submitted; int /*<<< orphan*/  io_mutex; int /*<<< orphan*/ * interface; } ;
struct usb_interface {int minor; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  skel_class ; 
 int /*<<< orphan*/  skel_delete ; 
 int /*<<< orphan*/  FUNC4 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 struct usb_skel* FUNC5 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct usb_interface *interface)
{
	struct usb_skel *dev;
	int minor = interface->minor;

	dev = FUNC5(interface);
	FUNC7(interface, NULL);

	/* give back our minor */
	FUNC4(interface, &skel_class);

	/* prevent more I/O from starting */
	FUNC2(&dev->io_mutex);
	dev->interface = NULL;
	FUNC3(&dev->io_mutex);

	FUNC6(&dev->submitted);

	/* decrement our usage count */
	FUNC1(&dev->kref, skel_delete);

	FUNC0(&interface->dev, "USB Skeleton #%d now disconnected", minor);
}
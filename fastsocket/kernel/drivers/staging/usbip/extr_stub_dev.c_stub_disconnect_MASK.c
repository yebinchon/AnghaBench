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
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct stub_device {int /*<<< orphan*/  ud; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDEV_EVENT_REMOVED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct stub_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct stub_device* FUNC3 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(struct usb_interface *interface)
{
	struct stub_device *sdev = FUNC3(interface);

	FUNC7("Enter\n");

	/* get stub_device */
	if (!sdev) {
		FUNC0(" could not get device from inteface data");
		/* BUG(); */
		return;
	}

	FUNC4(interface, NULL);


	/*
	 * NOTE:
	 * rx/tx threads are invoked for each usb_device.
	 */
	FUNC2(&interface->dev);

	/* 1. shutdown the current connection */
	FUNC5(&sdev->ud, SDEV_EVENT_REMOVED);

	/* 2. wait for the stop of the event handler */
	FUNC6(&sdev->ud);

	/* 3. free sdev */
	FUNC1(sdev);


	FUNC7("bye\n");
}
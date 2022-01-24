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
struct mdc800_data {scalar_t__ state; int /*<<< orphan*/ * dev; int /*<<< orphan*/  io_lock; int /*<<< orphan*/  download_urb; int /*<<< orphan*/  write_urb; int /*<<< orphan*/  irq_urb; } ;

/* Variables and functions */
 scalar_t__ NOT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  mdc800_class ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 struct mdc800_data* FUNC5 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8 (struct usb_interface *intf)
{
	struct mdc800_data* mdc800 = FUNC5(intf);

	FUNC0 ("(mdc800_usb_disconnect) called");

	if (mdc800) {
		if (mdc800->state == NOT_CONNECTED)
			return;

		FUNC4(intf, &mdc800_class);

		/* must be under lock to make sure no URB
		   is submitted after usb_kill_urb() */
		FUNC2(&mdc800->io_lock);
		mdc800->state=NOT_CONNECTED;

		FUNC6(mdc800->irq_urb);
		FUNC6(mdc800->write_urb);
		FUNC6(mdc800->download_urb);
		FUNC3(&mdc800->io_lock);

		mdc800->dev = NULL;
		FUNC7(intf, NULL);
	}
	FUNC1(&intf->dev, "Mustek MDC800 disconnected from USB.\n");
}
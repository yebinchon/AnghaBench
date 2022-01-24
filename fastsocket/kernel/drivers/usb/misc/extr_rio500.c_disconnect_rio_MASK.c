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
struct rio_usb_data {int /*<<< orphan*/  lock; scalar_t__ present; int /*<<< orphan*/  obuf; int /*<<< orphan*/  ibuf; int /*<<< orphan*/ * rio_dev; scalar_t__ isopen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 struct rio_usb_data* FUNC5 (struct usb_interface*) ; 
 int /*<<< orphan*/  usb_rio_class ; 
 int /*<<< orphan*/  FUNC6 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct usb_interface *intf)
{
	struct rio_usb_data *rio = FUNC5 (intf);

	FUNC6 (intf, NULL);
	if (rio) {
		FUNC4(intf, &usb_rio_class);

		FUNC2(&(rio->lock));
		if (rio->isopen) {
			rio->isopen = 0;
			/* better let it finish - the release will do whats needed */
			rio->rio_dev = NULL;
			FUNC3(&(rio->lock));
			return;
		}
		FUNC1(rio->ibuf);
		FUNC1(rio->obuf);

		FUNC0(&intf->dev, "USB Rio disconnected.\n");

		rio->present = 0;
		FUNC3(&(rio->lock));
	}
}
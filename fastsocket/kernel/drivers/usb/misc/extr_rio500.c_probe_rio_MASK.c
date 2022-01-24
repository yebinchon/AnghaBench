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
struct usb_device_id {int dummy; } ;
struct usb_device {int /*<<< orphan*/  devnum; } ;
struct rio_usb_data {int present; int /*<<< orphan*/  lock; void* ibuf; void* obuf; struct usb_device* rio_dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IBUF_SIZE ; 
 int /*<<< orphan*/  OBUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct usb_device* FUNC3 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct rio_usb_data rio_instance ; 
 int /*<<< orphan*/  FUNC7 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  usb_rio_class ; 
 int /*<<< orphan*/  FUNC9 (struct usb_interface*,struct rio_usb_data*) ; 

__attribute__((used)) static int FUNC10(struct usb_interface *intf,
		     const struct usb_device_id *id)
{
	struct usb_device *dev = FUNC3(intf);
	struct rio_usb_data *rio = &rio_instance;
	int retval;

	FUNC1(&intf->dev, "USB Rio found at address %d\n", dev->devnum);

	retval = FUNC8(intf, &usb_rio_class);
	if (retval) {
		FUNC2("Not able to get a minor for this device.");
		return -ENOMEM;
	}

	rio->rio_dev = dev;

	if (!(rio->obuf = FUNC5(OBUF_SIZE, GFP_KERNEL))) {
		FUNC2("probe_rio: Not enough memory for the output buffer");
		FUNC7(intf, &usb_rio_class);
		return -ENOMEM;
	}
	FUNC0("probe_rio: obuf address:%p", rio->obuf);

	if (!(rio->ibuf = FUNC5(IBUF_SIZE, GFP_KERNEL))) {
		FUNC2("probe_rio: Not enough memory for the input buffer");
		FUNC7(intf, &usb_rio_class);
		FUNC4(rio->obuf);
		return -ENOMEM;
	}
	FUNC0("probe_rio: ibuf address:%p", rio->ibuf);

	FUNC6(&(rio->lock));

	FUNC9 (intf, rio);
	rio->present = 1;

	return 0;
}
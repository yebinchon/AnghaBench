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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct usb_device {int maxchild; struct usb_device** children; int /*<<< orphan*/  dev; TYPE_1__ descriptor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct usb_device* FUNC2 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*) ; 

__attribute__((used)) static struct usb_device *FUNC5(struct usb_device *dev,
				       u16 vendor_id, u16 product_id)
{
	struct usb_device *ret_dev = NULL;
	int child;

	FUNC0(&dev->dev, "check for vendor %04x, product %04x ...\n",
	    FUNC1(dev->descriptor.idVendor),
	    FUNC1(dev->descriptor.idProduct));

	/* see if this device matches */
	if ((vendor_id == FUNC1(dev->descriptor.idVendor)) &&
	    (product_id == FUNC1(dev->descriptor.idProduct))) {
		FUNC0(&dev->dev, "matched this device!\n");
		ret_dev = FUNC2(dev);
		goto exit;
	}

	/* look through all of the children of this device */
	for (child = 0; child < dev->maxchild; ++child) {
		if (dev->children[child]) {
			FUNC3(dev->children[child]);
			ret_dev = FUNC5(dev->children[child],
					       vendor_id, product_id);
			FUNC4(dev->children[child]);
			if (ret_dev)
				goto exit;
		}
	}
exit:
	return ret_dev;
}
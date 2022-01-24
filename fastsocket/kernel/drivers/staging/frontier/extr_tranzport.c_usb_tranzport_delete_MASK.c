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
struct usb_tranzport {struct usb_tranzport* interrupt_out_buffer; struct usb_tranzport* interrupt_in_buffer; struct usb_tranzport* ring_buffer; int /*<<< orphan*/  interrupt_out_urb; int /*<<< orphan*/  interrupt_in_urb; TYPE_1__* intf; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_compress_wheel ; 
 int /*<<< orphan*/  dev_attr_enable ; 
 int /*<<< orphan*/  dev_attr_offline ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_tranzport*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_tranzport*) ; 

__attribute__((used)) static void FUNC4(struct usb_tranzport *dev)
{
	FUNC3(dev);
	if (dev->intf != NULL) {
		FUNC0(&dev->intf->dev, &dev_attr_enable);
		FUNC0(&dev->intf->dev, &dev_attr_offline);
		FUNC0(&dev->intf->dev, &dev_attr_compress_wheel);
	}

	/* free data structures */
	FUNC2(dev->interrupt_in_urb);
	FUNC2(dev->interrupt_out_urb);
	FUNC1(dev->ring_buffer);
	FUNC1(dev->interrupt_in_buffer);
	FUNC1(dev->interrupt_out_buffer);
	FUNC1(dev);
}
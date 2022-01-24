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
struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  bcdDevice; int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct usb_device {TYPE_1__ descriptor; } ;

/* Variables and functions */
 size_t FUNC0 (struct usb_device_id const*) ; 
 scalar_t__ FUNC1 (struct usb_device_id const*) ; 
 int /*<<< orphan*/ * chip_name ; 
 struct usb_device* FUNC2 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct usb_device*,size_t) ; 
 int /*<<< orphan*/  uea_usbatm_driver ; 
 int /*<<< orphan*/  FUNC7 (struct usb_device*) ; 
 int FUNC8 (struct usb_interface*,struct usb_device_id const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct usb_interface *intf, const struct usb_device_id *id)
{
	struct usb_device *usb = FUNC2(intf);

	FUNC4(usb);
	FUNC5(usb, "ADSL device founded vid (%#X) pid (%#X) Rev (%#X): %s\n",
		FUNC3(usb->descriptor.idVendor),
		FUNC3(usb->descriptor.idProduct),
		FUNC3(usb->descriptor.bcdDevice),
		chip_name[FUNC0(id)]);

	FUNC7(usb);

	if (FUNC1(id))
		return FUNC6(usb, FUNC0(id));

	return FUNC8(intf, id, &uea_usbatm_driver);
}
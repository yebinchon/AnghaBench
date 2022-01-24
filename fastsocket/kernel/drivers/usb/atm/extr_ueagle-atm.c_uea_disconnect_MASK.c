#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {TYPE_2__* altsetting; } ;
struct usb_device {TYPE_4__* config; } ;
struct TYPE_7__ {int bNumInterfaces; } ;
struct TYPE_8__ {TYPE_3__ desc; } ;
struct TYPE_5__ {int bInterfaceNumber; } ;
struct TYPE_6__ {TYPE_1__ desc; } ;

/* Variables and functions */
 struct usb_device* FUNC0 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_device*) ; 
 int /*<<< orphan*/  uea_mutex ; 
 int /*<<< orphan*/  FUNC6 (struct usb_interface*) ; 

__attribute__((used)) static void FUNC7(struct usb_interface *intf)
{
	struct usb_device *usb = FUNC0(intf);
	int ifnum = intf->altsetting->desc.bInterfaceNumber;
	FUNC3(usb);

	/* ADI930 has 2 interfaces and eagle 3 interfaces.
	 * Pre-firmware device has one interface
	 */
	if (usb->config->desc.bNumInterfaces != 1 && ifnum == 0) {
		FUNC1(&uea_mutex);
		FUNC6(intf);
		FUNC2(&uea_mutex);
		FUNC4(usb, "ADSL device removed\n");
	}

	FUNC5(usb);
}
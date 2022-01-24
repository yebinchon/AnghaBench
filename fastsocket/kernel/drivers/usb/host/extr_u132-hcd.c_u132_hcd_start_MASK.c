#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct TYPE_4__ {scalar_t__ controller; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct u132_platform_data {scalar_t__ vendor; scalar_t__ device; } ;
struct u132 {int going; TYPE_3__* platform_dev; int /*<<< orphan*/  sw_lock; int /*<<< orphan*/  flags; } ;
struct TYPE_5__ {scalar_t__ platform_data; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ESHUTDOWN ; 
 int /*<<< orphan*/  OHCI_QUIRK_AMD756 ; 
 int /*<<< orphan*/  OHCI_QUIRK_ZFMICRO ; 
 scalar_t__ PCI_VENDOR_ID_AMD ; 
 scalar_t__ PCI_VENDOR_ID_COMPAQ ; 
 scalar_t__ PCI_VENDOR_ID_OPTI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 struct u132* FUNC1 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct platform_device* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct u132*) ; 
 int FUNC7 (struct u132*) ; 

__attribute__((used)) static int FUNC8(struct usb_hcd *hcd)
{
	struct u132 *u132 = FUNC1(hcd);
	if (u132->going > 1) {
		FUNC0(&u132->platform_dev->dev, "device has been removed %d\n"
			, u132->going);
		return -ENODEV;
	} else if (u132->going > 0) {
		FUNC0(&u132->platform_dev->dev, "device is being removed\n");
		return -ESHUTDOWN;
	} else if (hcd->self.controller) {
		int retval;
		struct platform_device *pdev =
			FUNC5(hcd->self.controller);
		u16 vendor = ((struct u132_platform_data *)
			(pdev->dev.platform_data))->vendor;
		u16 device = ((struct u132_platform_data *)
			(pdev->dev.platform_data))->device;
		FUNC3(&u132->sw_lock);
		FUNC2(10);
		if (vendor == PCI_VENDOR_ID_AMD && device == 0x740c) {
			u132->flags = OHCI_QUIRK_AMD756;
		} else if (vendor == PCI_VENDOR_ID_OPTI && device == 0xc861) {
			FUNC0(&u132->platform_dev->dev, "WARNING: OPTi workar"
				"ounds unavailable\n");
		} else if (vendor == PCI_VENDOR_ID_COMPAQ && device == 0xa0f8)
			u132->flags |= OHCI_QUIRK_ZFMICRO;
		retval = FUNC7(u132);
		if (retval) {
			FUNC6(u132);
			u132->going = 1;
		}
		FUNC2(100);
		FUNC4(&u132->sw_lock);
		return retval;
	} else {
		FUNC0(&u132->platform_dev->dev, "platform_device missing\n");
		return -ENODEV;
	}
}
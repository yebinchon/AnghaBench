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
struct usb_interface {int dummy; } ;
struct usb_device {int dummy; } ;
struct swoc_info {int rev; int LinuxSKU; int LinuxVer; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ TRU_FORCE_MS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct swoc_info*) ; 
 struct usb_device* FUNC2 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC3 (struct swoc_info*) ; 
 struct swoc_info* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct usb_device*,struct swoc_info*) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ swi_tru_install ; 
 struct usb_interface* FUNC7 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev, struct device_attribute *attr,
			char *buf)
{
	struct swoc_info *swocInfo;
	struct usb_interface *intf = FUNC7(dev);
	struct usb_device *udev = FUNC2(intf);
	int result;
	if (swi_tru_install == TRU_FORCE_MS) {
		result = FUNC6(buf, PAGE_SIZE, "Forced Mass Storage\n");
	} else {
		swocInfo = FUNC4(sizeof(struct swoc_info), GFP_KERNEL);
		if (!swocInfo) {
			FUNC0("SWIMS: Allocation failure\n");
			FUNC6(buf, PAGE_SIZE, "Error\n");
			return -ENOMEM;
		}
		result = FUNC5(udev, swocInfo);
		if (result < 0) {
			FUNC0("SWIMS: failed SWoC query\n");
			FUNC3(swocInfo);
			FUNC6(buf, PAGE_SIZE, "Error\n");
			return -EIO;
		}
		FUNC1(swocInfo);
		result = FUNC6(buf, PAGE_SIZE,
			"REV=%02d SKU=%04X VER=%04X\n",
			swocInfo->rev,
			swocInfo->LinuxSKU,
			swocInfo->LinuxVer);
		FUNC3(swocInfo);
	}
	return result;
}
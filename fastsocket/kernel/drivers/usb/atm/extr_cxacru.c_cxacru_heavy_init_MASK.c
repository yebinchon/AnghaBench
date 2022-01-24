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
struct usbatm_data {struct cxacru_data* driver_data; } ;
struct usb_interface {int dummy; } ;
struct firmware {int dummy; } ;
struct cxacru_data {TYPE_1__* modem_type; } ;
struct TYPE_2__ {scalar_t__ boot_rom_patch; } ;

/* Variables and functions */
 int FUNC0 (struct cxacru_data*) ; 
 int FUNC1 (struct cxacru_data*,char*,struct firmware const**) ; 
 int /*<<< orphan*/  FUNC2 (struct cxacru_data*,struct firmware const*,struct firmware const*,struct firmware const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct firmware const*) ; 
 int /*<<< orphan*/  FUNC5 (struct usbatm_data*,char*) ; 

__attribute__((used)) static int FUNC6(struct usbatm_data *usbatm_instance,
			     struct usb_interface *usb_intf)
{
	const struct firmware *fw, *bp, *cf;
	struct cxacru_data *instance = usbatm_instance->driver_data;

	int ret = FUNC1(instance, "fw", &fw);
	if (ret) {
		FUNC5(usbatm_instance, "firmware (cxacru-fw.bin) unavailable (system misconfigured?)\n");
		return ret;
	}

	if (instance->modem_type->boot_rom_patch) {
		ret = FUNC1(instance, "bp", &bp);
		if (ret) {
			FUNC5(usbatm_instance, "boot ROM patch (cxacru-bp.bin) unavailable (system misconfigured?)\n");
			FUNC4(fw);
			return ret;
		}
	}

	if (FUNC1(instance, "cf", &cf))		/* optional */
		cf = NULL;

	FUNC2(instance, fw, bp, cf);

	if (cf)
		FUNC4(cf);
	if (instance->modem_type->boot_rom_patch)
		FUNC4(bp);
	FUNC4(fw);

	ret = FUNC0(instance);
	if (ret)
		FUNC3("modem initialisation failed");
	else
		FUNC3("done setting up the modem");

	return ret;
}
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
struct usb_device {int dummy; } ;
struct us_data {TYPE_1__* pusb_intf; struct usb_device* pusb_dev; } ;
struct swoc_info {int dummy; } ;
struct scsi_device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int /*<<< orphan*/  SWIMS_SET_MODE_Modem ; 
 scalar_t__ TRU_FORCE_MODEM ; 
 scalar_t__ TRU_FORCE_MS ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct swoc_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct swoc_info*) ; 
 int /*<<< orphan*/  dev_attr_truinst ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct swoc_info*) ; 
 struct swoc_info* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 struct scsi_device* FUNC7 (struct Scsi_Host*) ; 
 int FUNC8 (struct usb_device*,struct swoc_info*) ; 
 int FUNC9 (struct usb_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ swi_tru_install ; 
 struct Scsi_Host* FUNC10 (struct us_data*) ; 

int FUNC11(struct us_data *us)
{
	int result, retries;
	signed long delay_t;
	struct swoc_info *swocInfo;
	struct usb_device *udev;
	struct Scsi_Host *sh;
	struct scsi_device *sd;

	delay_t = 2;
	retries = 3;
	result = 0;
	udev = us->pusb_dev;

	sh = FUNC10(us);
	sd = FUNC7(sh);

	FUNC0("SWIMS: sierra_ms_init called\n");

	/* Force Modem mode */
	if (swi_tru_install == TRU_FORCE_MODEM) {
		FUNC0("SWIMS: %s", "Forcing Modem Mode\n");
		result = FUNC9(udev, SWIMS_SET_MODE_Modem);
		if (result < 0)
			FUNC0("SWIMS: Failed to switch to modem mode.\n");
		return -EIO;
	}
	/* Force Mass Storage mode (keep CD-Rom) */
	else if (swi_tru_install == TRU_FORCE_MS) {
		FUNC0("SWIMS: %s", "Forcing Mass Storage Mode\n");
		goto complete;
	}
	/* Normal TRU-Install Logic */
	else {
		FUNC0("SWIMS: %s", "Normal SWoC Logic\n");

		swocInfo = FUNC5(sizeof(struct swoc_info),
				GFP_KERNEL);
		if (!swocInfo) {
			FUNC0("SWIMS: %s", "Allocation failure\n");
			return -ENOMEM;
		}

		retries = 3;
		do {
			retries--;
			result = FUNC8(udev, swocInfo);
			if (result < 0) {
				FUNC0("SWIMS: %s", "Failed SWoC query\n");
				FUNC6(2*HZ);
			}
		} while (retries && result < 0);

		if (result < 0) {
			FUNC0("SWIMS: %s",
				  "Completely failed SWoC query\n");
			FUNC4(swocInfo);
			return -EIO;
		}

		FUNC2(swocInfo);

		/* If there is not Linux software on the TRU-Install device
		 * then switch to modem mode
		 */
		if (!FUNC1(swocInfo)) {
			FUNC0("SWIMS: %s",
				"Switching to Modem Mode\n");
			result = FUNC9(udev,
				SWIMS_SET_MODE_Modem);
			if (result < 0)
				FUNC0("SWIMS: Failed to switch modem\n");
			FUNC4(swocInfo);
			return -EIO;
		}
		FUNC4(swocInfo);
	}
complete:
	result = FUNC3(&us->pusb_intf->dev, &dev_attr_truinst);

	return 0;
}
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
struct us_data {int /*<<< orphan*/  send_ctrl_pipe; scalar_t__ extra; } ;
struct isd200_info {int /*<<< orphan*/  ConfigData; } ;

/* Variables and functions */
 int ISD200_ERROR ; 
 int ISD200_GOOD ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct isd200_info*) ; 
 int FUNC2 (struct us_data*,int /*<<< orphan*/ ,int,int,int,int,void*,int) ; 

__attribute__((used)) static int FUNC3( struct us_data *us ) 
{
	struct isd200_info *info = (struct isd200_info *)us->extra;
	int retStatus = ISD200_GOOD;
	int result;

#ifdef CONFIG_USB_STORAGE_DEBUG
	US_DEBUGP("Entering isd200_write_config\n");
	US_DEBUGP("   Writing the following ISD200 Config Data:\n");
	isd200_log_config(info);
#endif

	/* let's send the command via the control pipe */
	result = FUNC2(
		us, 
		us->send_ctrl_pipe,
		0x01, 
		USB_TYPE_VENDOR | USB_RECIP_DEVICE | USB_DIR_OUT,
		0x0000, 
		0x0002, 
		(void *) &info->ConfigData, 
		sizeof(info->ConfigData));

	if (result >= 0) {
		FUNC0("   ISD200 Config Data was written successfully\n");
	} else {
		FUNC0("   Request to write ISD200 Config Data failed!\n");
		retStatus = ISD200_ERROR;
	}

	FUNC0("Leaving isd200_write_config %08X\n", retStatus);
	return retStatus;
}
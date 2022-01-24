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
struct backlight_device {int dummy; } ;
struct appledisplay {int* msgdata; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACD_USB_BRIGHTNESS ; 
 int /*<<< orphan*/  ACD_USB_TIMEOUT ; 
 int USB_DIR_IN ; 
 int USB_RECIP_INTERFACE ; 
 int /*<<< orphan*/  USB_REQ_GET_REPORT ; 
 int USB_TYPE_CLASS ; 
 struct appledisplay* FUNC0 (struct backlight_device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct backlight_device *bd)
{
	struct appledisplay *pdata = FUNC0(bd);
	int retval;

	retval = FUNC1(
		pdata->udev,
		FUNC2(pdata->udev, 0),
		USB_REQ_GET_REPORT,
		USB_DIR_IN | USB_TYPE_CLASS | USB_RECIP_INTERFACE,
		ACD_USB_BRIGHTNESS,
		0,
		pdata->msgdata, 2,
		ACD_USB_TIMEOUT);

	if (retval < 0)
		return retval;
	else
		return pdata->msgdata[1];
}
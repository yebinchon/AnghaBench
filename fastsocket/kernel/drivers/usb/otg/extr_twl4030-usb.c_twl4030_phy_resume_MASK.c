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
struct twl4030_usb {scalar_t__ usb_mode; scalar_t__ asleep; } ;

/* Variables and functions */
 scalar_t__ T2_USB_MODE_ULPI ; 
 int /*<<< orphan*/  FUNC0 (struct twl4030_usb*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct twl4030_usb*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct twl4030_usb*,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct twl4030_usb *twl)
{
	if (!twl->asleep)
		return;

	FUNC1(twl, 1);
	FUNC0(twl, 1);
	FUNC2(twl, twl->usb_mode);
	if (twl->usb_mode == T2_USB_MODE_ULPI)
		FUNC0(twl, 0);
	twl->asleep = 0;
}
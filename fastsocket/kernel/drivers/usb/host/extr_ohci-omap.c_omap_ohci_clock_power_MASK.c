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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  usb_dc_ck ; 
 int /*<<< orphan*/  usb_host_ck ; 

__attribute__((used)) static void FUNC3(int on)
{
	if (on) {
		FUNC1(usb_dc_ck);
		FUNC1(usb_host_ck);
		/* guesstimate for T5 == 1x 32K clock + APLL lock time */
		FUNC2(100);
	} else {
		FUNC0(usb_host_ck);
		FUNC0(usb_dc_ck);
	}
}
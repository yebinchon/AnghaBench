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
struct twl4030_usb {int dummy; } ;
struct otg_transceiver {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct twl4030_usb*) ; 
 int /*<<< orphan*/  FUNC1 (struct twl4030_usb*,int) ; 
 struct twl4030_usb* FUNC2 (struct otg_transceiver*) ; 

__attribute__((used)) static int FUNC3(struct otg_transceiver *x, int suspend)
{
	struct twl4030_usb *twl = FUNC2(x);

	if (suspend)
		FUNC1(twl, 1);
	else
		FUNC0(twl);

	return 0;
}
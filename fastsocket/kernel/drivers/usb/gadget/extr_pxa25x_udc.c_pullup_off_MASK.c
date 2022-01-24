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
struct pxa2xx_udc_mach_info {int gpio_pullup_inverted; int /*<<< orphan*/  (* udc_command ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  gpio_pullup; } ;
struct TYPE_2__ {struct pxa2xx_udc_mach_info* mach; } ;

/* Variables and functions */
 int /*<<< orphan*/  PXA2XX_UDC_CMD_DISCONNECT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* the_controller ; 

__attribute__((used)) static void FUNC3(void)
{
	struct pxa2xx_udc_mach_info		*mach = the_controller->mach;
	int off_level = mach->gpio_pullup_inverted;

	if (FUNC0(mach->gpio_pullup))
		FUNC1(mach->gpio_pullup, off_level);
	else if (mach->udc_command)
		mach->udc_command(PXA2XX_UDC_CMD_DISCONNECT);
}
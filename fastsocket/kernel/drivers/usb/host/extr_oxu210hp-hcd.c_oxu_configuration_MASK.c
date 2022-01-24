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
typedef  int u32 ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OXU_ASO ; 
 int OXU_ASO_OP ; 
 int /*<<< orphan*/  OXU_CHIPIRQEN_CLR ; 
 int /*<<< orphan*/  OXU_CHIPIRQEN_SET ; 
 int /*<<< orphan*/  OXU_CHIPIRQSTATUS ; 
 int /*<<< orphan*/  OXU_CLKCTRL_SET ; 
 int OXU_COMPARATOR ; 
 int /*<<< orphan*/  OXU_HOSTIFCONFIG ; 
 int OXU_OVRCCURPUPDEN ; 
 int /*<<< orphan*/  OXU_PIOBURSTREADCTRL ; 
 int /*<<< orphan*/  OXU_SOFTRESET ; 
 int OXU_SPHPOEN ; 
 int OXU_SRESET ; 
 int OXU_SYSCLKEN ; 
 int OXU_USBOTGCLKEN ; 
 int OXU_USBOTGLPWUI ; 
 int OXU_USBSPHLPWUI ; 
 int FUNC0 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct platform_device *pdev, void *base)
{
	u32 tmp;

	/* Initialize top level registers.
	 * First write ever
	 */
	FUNC1(base, OXU_HOSTIFCONFIG, 0x0000037D);
	FUNC1(base, OXU_SOFTRESET, OXU_SRESET);
	FUNC1(base, OXU_HOSTIFCONFIG, 0x0000037D);

	tmp = FUNC0(base, OXU_PIOBURSTREADCTRL);
	FUNC1(base, OXU_PIOBURSTREADCTRL, tmp | 0x0040);

	FUNC1(base, OXU_ASO, OXU_SPHPOEN | OXU_OVRCCURPUPDEN |
					OXU_COMPARATOR | OXU_ASO_OP);

	tmp = FUNC0(base, OXU_CLKCTRL_SET);
	FUNC1(base, OXU_CLKCTRL_SET, tmp | OXU_SYSCLKEN | OXU_USBOTGCLKEN);

	/* Clear all top interrupt enable */
	FUNC1(base, OXU_CHIPIRQEN_CLR, 0xff);

	/* Clear all top interrupt status */
	FUNC1(base, OXU_CHIPIRQSTATUS, 0xff);

	/* Enable all needed top interrupt except OTG SPH core */
	FUNC1(base, OXU_CHIPIRQEN_SET, OXU_USBSPHLPWUI | OXU_USBOTGLPWUI);
}
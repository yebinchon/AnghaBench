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
 int USBH_ENABLE_CE ; 
 int USBH_ENABLE_INIT ; 
 int /*<<< orphan*/  USB_HOST_CONFIG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(void)
{
	/* enable clock to EHCI block and HS PHY PLL*/
	FUNC2(FUNC0(USB_HOST_CONFIG) | USBH_ENABLE_CE, USB_HOST_CONFIG);
	FUNC1();
	FUNC3(1000);

	/* enable EHCI mmio */
	FUNC2(FUNC0(USB_HOST_CONFIG) | USBH_ENABLE_INIT, USB_HOST_CONFIG);
	FUNC1();
	FUNC3(1000);
}
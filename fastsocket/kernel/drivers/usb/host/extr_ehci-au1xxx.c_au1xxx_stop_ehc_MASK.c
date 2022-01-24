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
 unsigned long USBH_DISABLE ; 
 int /*<<< orphan*/  USB_HOST_CONFIG ; 
 unsigned long USB_MCFG_EHCCLKEN ; 
 unsigned long USB_MCFG_PHYPLLEN ; 
 unsigned long USB_MCFG_UCECLKEN ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(void)
{
	unsigned long c;

	/* Disable mem */
	FUNC2(FUNC0(USB_HOST_CONFIG) & ~USBH_DISABLE, USB_HOST_CONFIG);
	FUNC1();
	FUNC3(1000);

	/* Disable EHC clock. If the HS PHY is unused disable it too. */
	c = FUNC0(USB_HOST_CONFIG) & ~USB_MCFG_EHCCLKEN;
	if (!(c & USB_MCFG_UCECLKEN))		/* UDC disabled? */
		c &= ~USB_MCFG_PHYPLLEN;	/* yes: disable HS PHY PLL */
	FUNC2(c, USB_HOST_CONFIG);
	FUNC1();
}
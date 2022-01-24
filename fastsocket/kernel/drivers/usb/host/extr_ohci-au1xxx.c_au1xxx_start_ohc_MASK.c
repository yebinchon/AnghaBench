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
 int USBH_ENABLE_RD ; 
 int /*<<< orphan*/  USB_HOST_CONFIG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(void)
{
	/* enable host controller */
#ifndef CONFIG_SOC_AU1200
	FUNC2(USBH_ENABLE_CE, USB_HOST_CONFIG);
	FUNC1();
	FUNC3(1000);

	FUNC2(FUNC0(USB_HOST_CONFIG) | USBH_ENABLE_INIT, USB_HOST_CONFIG);
	FUNC1();
	FUNC3(1000);

	/* wait for reset complete (read register twice; see au1500 errata) */
	while (FUNC0(USB_HOST_CONFIG),
		!(FUNC0(USB_HOST_CONFIG) & USBH_ENABLE_RD))
		FUNC3(1000);

#else   /* Au1200 */
	au_writel(au_readl(USB_HOST_CONFIG) | USBH_ENABLE_CE, USB_HOST_CONFIG);
	au_sync();
	udelay(1000);

	au_writel(au_readl(USB_HOST_CONFIG) | USBH_ENABLE_INIT, USB_HOST_CONFIG);
	au_sync();
	udelay(2000);
#endif  /* Au1200 */
}
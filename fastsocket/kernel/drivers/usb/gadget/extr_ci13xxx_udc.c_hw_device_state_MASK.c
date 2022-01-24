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

/* Variables and functions */
 int /*<<< orphan*/  CAP_ENDPTLISTADDR ; 
 int /*<<< orphan*/  CAP_USBCMD ; 
 int /*<<< orphan*/  CAP_USBINTR ; 
 int USBCMD_RS ; 
 int USBi_PCI ; 
 int USBi_SLI ; 
 int USBi_UEI ; 
 int USBi_UI ; 
 int USBi_URI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC1(u32 dma)
{
	if (dma) {
		FUNC0(CAP_ENDPTLISTADDR, ~0, dma);
		/* interrupt, error, port change, reset, sleep/suspend */
		FUNC0(CAP_USBINTR, ~0,
			     USBi_UI|USBi_UEI|USBi_PCI|USBi_URI|USBi_SLI);
		FUNC0(CAP_USBCMD, USBCMD_RS, USBCMD_RS);
	} else {
		FUNC0(CAP_USBCMD, USBCMD_RS, 0);
		FUNC0(CAP_USBINTR, ~0, 0);
	}
	return 0;
}
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
typedef  int u32 ;
struct fsl_udc {scalar_t__ stopped; } ;
struct TYPE_2__ {int /*<<< orphan*/  usbcmd; int /*<<< orphan*/  usbmode; int /*<<< orphan*/  usbintr; } ;

/* Variables and functions */
 int USB_CMD_RUN_STOP ; 
 int USB_INTR_DEVICE_SUSPEND ; 
 int USB_INTR_ERR_INT_EN ; 
 int USB_INTR_INT_EN ; 
 int USB_INTR_PTC_DETECT_EN ; 
 int USB_INTR_RESET_EN ; 
 int USB_INTR_SYS_ERR_EN ; 
 int USB_MODE_CTRL_MODE_DEVICE ; 
 TYPE_1__* dr_regs ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct fsl_udc *udc)
{
	u32 temp;

	/* Enable DR irq reg */
	temp = USB_INTR_INT_EN | USB_INTR_ERR_INT_EN
		| USB_INTR_PTC_DETECT_EN | USB_INTR_RESET_EN
		| USB_INTR_DEVICE_SUSPEND | USB_INTR_SYS_ERR_EN;

	FUNC1(temp, &dr_regs->usbintr);

	/* Clear stopped bit */
	udc->stopped = 0;

	/* Set the controller as device mode */
	temp = FUNC0(&dr_regs->usbmode);
	temp |= USB_MODE_CTRL_MODE_DEVICE;
	FUNC1(temp, &dr_regs->usbmode);

	/* Set controller to Run */
	temp = FUNC0(&dr_regs->usbcmd);
	temp |= USB_CMD_RUN_STOP;
	FUNC1(temp, &dr_regs->usbcmd);

	return;
}
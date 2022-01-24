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
typedef  int u8 ;
typedef  int u32 ;
struct fsl_udc {struct ep_queue_head* ep_qh; } ;
struct ep_queue_head {scalar_t__ setup_buffer; } ;
struct TYPE_2__ {int /*<<< orphan*/  usbcmd; int /*<<< orphan*/  endptsetupstat; } ;

/* Variables and functions */
 int EP_DIR_OUT ; 
 int USB_CMD_SUTW ; 
 TYPE_1__* dr_regs ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int) ; 

__attribute__((used)) static void FUNC3(struct fsl_udc *udc, u8 ep_num, u8 *buffer_ptr)
{
	u32 temp;
	struct ep_queue_head *qh;

	qh = &udc->ep_qh[ep_num * 2 + EP_DIR_OUT];

	/* Clear bit in ENDPTSETUPSTAT */
	temp = FUNC0(&dr_regs->endptsetupstat);
	FUNC1(temp | (1 << ep_num), &dr_regs->endptsetupstat);

	/* while a hazard exists when setup package arrives */
	do {
		/* Set Setup Tripwire */
		temp = FUNC0(&dr_regs->usbcmd);
		FUNC1(temp | USB_CMD_SUTW, &dr_regs->usbcmd);

		/* Copy the setup packet to local buffer */
		FUNC2(buffer_ptr, (u8 *) qh->setup_buffer, 8);
	} while (!(FUNC0(&dr_regs->usbcmd) & USB_CMD_SUTW));

	/* Clear Setup Tripwire */
	temp = FUNC0(&dr_regs->usbcmd);
	FUNC1(temp & ~USB_CMD_SUTW, &dr_regs->usbcmd);
}
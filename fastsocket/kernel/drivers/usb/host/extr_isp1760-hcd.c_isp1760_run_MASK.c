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
struct usb_hcd {int uses_new_polling; scalar_t__ regs; int /*<<< orphan*/  state; } ;
struct isp1760_hcd {int dummy; } ;

/* Variables and functions */
 int CMD_LRESET ; 
 int CMD_RESET ; 
 int CMD_RUN ; 
 int FLAG_CF ; 
 scalar_t__ HC_CHIP_ID_REG ; 
 scalar_t__ HC_CONFIGFLAG ; 
 scalar_t__ HC_HW_MODE_CTRL ; 
 int /*<<< orphan*/  HC_STATE_RUNNING ; 
 scalar_t__ HC_USBCMD ; 
 int HW_GLOBAL_INTR_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ehci_cf_port_reset_rwsem ; 
 int FUNC1 (struct isp1760_hcd*,scalar_t__,int,int,int) ; 
 struct isp1760_hcd* FUNC2 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (struct isp1760_hcd*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_hcd*) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct usb_hcd *hcd)
{
	struct isp1760_hcd *priv = FUNC2(hcd);
	int retval;
	u32 temp;
	u32 command;
	u32 chipid;

	hcd->uses_new_polling = 1;

	hcd->state = HC_STATE_RUNNING;
	FUNC3(hcd);
	temp = FUNC6(hcd->regs + HC_HW_MODE_CTRL);
	FUNC7(temp | HW_GLOBAL_INTR_EN, hcd->regs + HC_HW_MODE_CTRL);

	command = FUNC6(hcd->regs + HC_USBCMD);
	command &= ~(CMD_LRESET|CMD_RESET);
	command |= CMD_RUN;
	FUNC7(command, hcd->regs + HC_USBCMD);

	retval = FUNC1(priv, hcd->regs + HC_USBCMD,	CMD_RUN, CMD_RUN,
			250 * 1000);
	if (retval)
		return retval;

	/*
	 * XXX
	 * Spec says to write FLAG_CF as last config action, priv code grabs
	 * the semaphore while doing so.
	 */
	FUNC0(&ehci_cf_port_reset_rwsem);
	FUNC7(FLAG_CF, hcd->regs + HC_CONFIGFLAG);

	retval = FUNC1(priv, hcd->regs + HC_CONFIGFLAG, FLAG_CF, FLAG_CF,
			250 * 1000);
	FUNC8(&ehci_cf_port_reset_rwsem);
	if (retval)
		return retval;

	chipid = FUNC6(hcd->regs + HC_CHIP_ID_REG);
	FUNC4(priv, "USB ISP %04x HW rev. %d started\n",	chipid & 0xffff,
			chipid >> 16);

	/* PTD Register Init Part 2, Step 28 */
	/* enable INTs */
	FUNC5(hcd);

	/* GRR this is run-once init(), being done every time the HC starts.
	 * So long as they're part of class devices, we can't do it init()
	 * since the class device isn't created that early.
	 */
	return 0;
}
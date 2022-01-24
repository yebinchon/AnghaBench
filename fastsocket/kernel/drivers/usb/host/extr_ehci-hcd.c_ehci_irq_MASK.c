#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct usb_hcd {scalar_t__ state; int /*<<< orphan*/  rh_timer; } ;
struct TYPE_3__ {int /*<<< orphan*/  reclaim; int /*<<< orphan*/  error; int /*<<< orphan*/  normal; } ;
struct ehci_hcd {scalar_t__* reset_done; int /*<<< orphan*/  lock; TYPE_2__* regs; int /*<<< orphan*/  suspended_ports; scalar_t__ has_ppcd; int /*<<< orphan*/  hcs_params; TYPE_1__ stats; scalar_t__ reclaim; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {int /*<<< orphan*/  configured_flag; int /*<<< orphan*/ * port_status; int /*<<< orphan*/  command; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int CMD_IAAD ; 
 int CMD_RUN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ HC_STATE_HALT ; 
 int INTR_MASK ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int PORT_OWNER ; 
 int PORT_PE ; 
 int PORT_RESUME ; 
 int PORT_SUSPEND ; 
 int STS_ERR ; 
 int STS_FATAL ; 
 int STS_IAA ; 
 int STS_INT ; 
 int STS_PCD ; 
 int /*<<< orphan*/  FUNC2 (struct ehci_hcd*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ehci_hcd*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ehci_hcd*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct ehci_hcd*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct ehci_hcd*) ; 
 int FUNC7 (struct ehci_hcd*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ehci_hcd*) ; 
 int /*<<< orphan*/  FUNC9 (struct ehci_hcd*) ; 
 int /*<<< orphan*/  FUNC10 (struct ehci_hcd*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct ehci_hcd*) ; 
 struct ehci_hcd* FUNC12 (struct usb_hcd*) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (unsigned int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC21 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC22 (struct usb_hcd*) ; 

__attribute__((used)) static irqreturn_t FUNC23 (struct usb_hcd *hcd)
{
	struct ehci_hcd		*ehci = FUNC12 (hcd);
	u32			status, masked_status, pcd_status = 0, cmd;
	int			bh;

	FUNC16 (&ehci->lock);

	status = FUNC7(ehci, &ehci->regs->status);

	/* e.g. cardbus physical eject */
	if (status == ~(u32) 0) {
		FUNC4 (ehci, "device removed\n");
		goto dead;
	}

	/* Shared IRQ? */
	masked_status = status & INTR_MASK;
	if (!masked_status || FUNC19(hcd->state == HC_STATE_HALT)) {
		FUNC17(&ehci->lock);
		return IRQ_NONE;
	}

	/* clear (just) interrupts */
	FUNC10(ehci, masked_status, &ehci->regs->status);
	cmd = FUNC7(ehci, &ehci->regs->command);
	bh = 0;

#ifdef	VERBOSE_DEBUG
	/* unrequested/ignored: Frame List Rollover */
	dbg_status (ehci, "irq", status);
#endif

	/* INT, ERR, and IAA interrupt rates can be throttled */

	/* normal [4.15.1.2] or error [4.15.1.1] completion */
	if (FUNC13 ((status & (STS_INT|STS_ERR)) != 0)) {
		if (FUNC13 ((status & STS_ERR) == 0))
			FUNC0 (ehci->stats.normal);
		else
			FUNC0 (ehci->stats.error);
		bh = 1;
	}

	/* complete the unlinking of some qh [4.15.2.3] */
	if (status & STS_IAA) {
		/* guard against (alleged) silicon errata */
		if (cmd & CMD_IAAD) {
			FUNC10(ehci, cmd & ~CMD_IAAD,
					&ehci->regs->command);
			FUNC4(ehci, "IAA with IAAD still set?\n");
		}
		if (ehci->reclaim) {
			FUNC0(ehci->stats.reclaim);
			FUNC11(ehci);
		} else
			FUNC4(ehci, "IAA with nothing to reclaim?\n");
	}

	/* remote wakeup [4.3.1] */
	if (status & STS_PCD) {
		unsigned	i = FUNC1 (ehci->hcs_params);
		u32		ppcd = 0;

		/* kick root hub later */
		pcd_status = status;

		/* resume root hub? */
		if (!(cmd & CMD_RUN))
			FUNC22(hcd);

		/* get per-port change detect bits */
		if (ehci->has_ppcd)
			ppcd = status >> 16;

		while (i--) {
			int pstatus;

			/* leverage per-port change bits feature */
			if (ehci->has_ppcd && !(ppcd & (1 << i)))
				continue;
			pstatus = FUNC7(ehci,
					 &ehci->regs->port_status[i]);

			if (pstatus & PORT_OWNER)
				continue;
			if (!(FUNC18(i, &ehci->suspended_ports) &&
					((pstatus & PORT_RESUME) ||
						!(pstatus & PORT_SUSPEND)) &&
					(pstatus & PORT_PE) &&
					ehci->reset_done[i] == 0))
				continue;

			/* start 20 msec resume signaling from this port,
			 * and make khubd collect PORT_STAT_C_SUSPEND to
			 * stop that signaling.  Use 5 ms extra for safety,
			 * like usb_port_resume() does.
			 */
			ehci->reset_done[i] = jiffies + FUNC15(25);
			FUNC4 (ehci, "port %d remote wakeup\n", i + 1);
			FUNC14(&hcd->rh_timer, ehci->reset_done[i]);
		}
	}

	/* PCI errors [4.15.2.4] */
	if (FUNC19 ((status & STS_FATAL) != 0)) {
		FUNC5(ehci, "fatal error\n");
		FUNC2(ehci, "fatal", cmd);
		FUNC3(ehci, "fatal", status);
		FUNC6(ehci);
dead:
		FUNC8(ehci);
		FUNC10(ehci, 0, &ehci->regs->configured_flag);
		FUNC20(hcd);
		/* generic layer kills/unlinks all urbs, then
		 * uses ehci_stop to clean up the rest
		 */
		bh = 1;
	}

	if (bh)
		FUNC9 (ehci);
	FUNC17 (&ehci->lock);
	if (pcd_status)
		FUNC21(hcd);
	return IRQ_HANDLED;
}
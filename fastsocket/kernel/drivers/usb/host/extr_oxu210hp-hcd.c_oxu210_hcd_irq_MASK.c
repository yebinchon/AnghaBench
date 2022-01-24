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
struct usb_hcd {scalar_t__ state; int /*<<< orphan*/  rh_timer; } ;
struct oxu_hcd {int reclaim_ready; scalar_t__* reset_done; int /*<<< orphan*/  lock; TYPE_1__* regs; int /*<<< orphan*/  hcs_params; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  configured_flag; int /*<<< orphan*/  command; int /*<<< orphan*/  status; int /*<<< orphan*/ * port_status; } ;

/* Variables and functions */
 int CMD_RUN ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ HC_STATE_HALT ; 
 int INTR_MASK ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int PORT_OWNER ; 
 int PORT_RESUME ; 
 int STS_ERR ; 
 int STS_FATAL ; 
 int STS_HALT ; 
 int STS_IAA ; 
 int STS_INT ; 
 int STS_PCD ; 
 int /*<<< orphan*/  FUNC1 (struct oxu_hcd*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct oxu_hcd*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct oxu_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (struct oxu_hcd*) ; 
 struct oxu_hcd* FUNC5 (struct usb_hcd*) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct oxu_hcd*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct oxu_hcd*,char*) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC17 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC18 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC19(struct usb_hcd *hcd)
{
	struct oxu_hcd *oxu = FUNC5(hcd);
	u32 status, pcd_status = 0;
	int bh;

	FUNC12(&oxu->lock);

	status = FUNC11(&oxu->regs->status);

	/* e.g. cardbus physical eject */
	if (status == ~(u32) 0) {
		FUNC9(oxu, "device removed\n");
		goto dead;
	}

	/* Shared IRQ? */
	status &= INTR_MASK;
	if (!status || FUNC14(hcd->state == HC_STATE_HALT)) {
		FUNC13(&oxu->lock);
		return IRQ_NONE;
	}

	/* clear (just) interrupts */
	FUNC18(status, &oxu->regs->status);
	FUNC11(&oxu->regs->command);	/* unblock posted write */
	bh = 0;

#ifdef OXU_VERBOSE_DEBUG
	/* unrequested/ignored: Frame List Rollover */
	dbg_status(oxu, "irq", status);
#endif

	/* INT, ERR, and IAA interrupt rates can be throttled */

	/* normal [4.15.1.2] or error [4.15.1.1] completion */
	if (FUNC6((status & (STS_INT|STS_ERR)) != 0))
		bh = 1;

	/* complete the unlinking of some qh [4.15.2.3] */
	if (status & STS_IAA) {
		oxu->reclaim_ready = 1;
		bh = 1;
	}

	/* remote wakeup [4.3.1] */
	if (status & STS_PCD) {
		unsigned i = FUNC0(oxu->hcs_params);
		pcd_status = status;

		/* resume root hub? */
		if (!(FUNC11(&oxu->regs->command) & CMD_RUN))
			FUNC17(hcd);

		while (i--) {
			int pstatus = FUNC11(&oxu->regs->port_status[i]);

			if (pstatus & PORT_OWNER)
				continue;
			if (!(pstatus & PORT_RESUME)
					|| oxu->reset_done[i] != 0)
				continue;

			/* start 20 msec resume signaling from this port,
			 * and make khubd collect PORT_STAT_C_SUSPEND to
			 * stop that signaling.
			 */
			oxu->reset_done[i] = jiffies + FUNC8(20);
			FUNC9(oxu, "port %d remote wakeup\n", i + 1);
			FUNC7(&hcd->rh_timer, oxu->reset_done[i]);
		}
	}

	/* PCI errors [4.15.2.4] */
	if (FUNC14((status & STS_FATAL) != 0)) {
		/* bogus "fatal" IRQs appear on some chips... why?  */
		status = FUNC11(&oxu->regs->status);
		FUNC1(oxu, "fatal", FUNC11(&oxu->regs->command));
		FUNC2(oxu, "fatal", status);
		if (status & STS_HALT) {
			FUNC10(oxu, "fatal error\n");
dead:
			FUNC3(oxu);
			FUNC18(0, &oxu->regs->configured_flag);
			FUNC15(hcd);
			/* generic layer kills/unlinks all urbs, then
			 * uses oxu_stop to clean up the rest
			 */
			bh = 1;
		}
	}

	if (bh)
		FUNC4(oxu);
	FUNC13(&oxu->lock);
	if (pcd_status & STS_PCD)
		FUNC16(hcd);
	return IRQ_HANDLED;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_5__ {int /*<<< orphan*/  controller; } ;
struct usb_hcd {int uses_new_polling; void* state; int /*<<< orphan*/  flags; TYPE_2__ self; } ;
struct ohci_hcd {int fminterval; int hc_control; int flags; int /*<<< orphan*/ * ed_to_check; scalar_t__ eds_scheduled; int /*<<< orphan*/  unlink_watchdog; int /*<<< orphan*/  lock; scalar_t__ next_statechange; TYPE_3__* regs; scalar_t__ hcca_dma; int /*<<< orphan*/  hcca; } ;
struct ohci_hcca {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  b; int /*<<< orphan*/  status; int /*<<< orphan*/  a; } ;
struct TYPE_6__ {int /*<<< orphan*/  control; TYPE_1__ roothub; int /*<<< orphan*/  intrenable; int /*<<< orphan*/  intrstatus; int /*<<< orphan*/  periodicstart; int /*<<< orphan*/  fminterval; int /*<<< orphan*/  hcca; int /*<<< orphan*/  ed_bulkhead; int /*<<< orphan*/  ed_controlhead; int /*<<< orphan*/  cmdstatus; } ;

/* Variables and functions */
 int EOVERFLOW ; 
 int FI ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  HCD_FLAG_POLL_RH ; 
 void* HC_STATE_RUNNING ; 
 int const OHCI_CONTROL_INIT ; 
 int OHCI_CTRL_HCFS ; 
 int OHCI_CTRL_RWC ; 
 int OHCI_HCR ; 
 int OHCI_INTR_INIT ; 
 int OHCI_QUIRK_AMD756 ; 
 int OHCI_QUIRK_HUB_POWER ; 
 int OHCI_QUIRK_INITRESET ; 
 int OHCI_QUIRK_SUPERIO ; 
#define  OHCI_USB_OPER 130 
 int OHCI_USB_RESET ; 
#define  OHCI_USB_RESUME 129 
#define  OHCI_USB_SUSPEND 128 
 int RH_A_NOCP ; 
 int RH_A_NPS ; 
 int RH_A_OCPM ; 
 int RH_A_POTPGT ; 
 int RH_A_PSM ; 
 int RH_B_PPCM ; 
 int RH_HS_DRWE ; 
 int RH_HS_LPSC ; 
 scalar_t__ STATECHANGE_DELAY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ohci_hcd*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct ohci_hcd*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct ohci_hcd*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ohci_hcd*,char*,...) ; 
 int FUNC9 (struct ohci_hcd*,int /*<<< orphan*/ *) ; 
 struct usb_hcd* FUNC10 (struct ohci_hcd*) ; 
 int /*<<< orphan*/  FUNC11 (struct ohci_hcd*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct ohci_hcd*) ; 
 scalar_t__ FUNC13 (struct ohci_hcd*) ; 
 int FUNC14 (struct ohci_hcd*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  unlink_watchdog_func ; 

__attribute__((used)) static int FUNC20 (struct ohci_hcd *ohci)
{
	u32			mask, val;
	int			first = ohci->fminterval == 0;
	struct usb_hcd		*hcd = FUNC10(ohci);

	FUNC2 (ohci);

	/* boot firmware should have set this up (5.1.1.3.1) */
	if (first) {

		val = FUNC9 (ohci, &ohci->regs->fminterval);
		ohci->fminterval = val & 0x3fff;
		if (ohci->fminterval != FI)
			FUNC6 (ohci, "fminterval delta %d\n",
				ohci->fminterval - FI);
		ohci->fminterval |= FUNC0 (ohci->fminterval) << 16;
		/* also: power/overcurrent flags in roothub.a */
	}

	/* Reset USB nearly "by the book".  RemoteWakeupConnected has
	 * to be checked in case boot firmware (BIOS/SMM/...) has set up
	 * wakeup in a way the bus isn't aware of (e.g., legacy PCI PM).
	 * If the bus glue detected wakeup capability then it should
	 * already be enabled; if so we'll just enable it again.
	 */
	if ((ohci->hc_control & OHCI_CTRL_RWC) != 0)
		FUNC1(hcd->self.controller, 1);

	switch (ohci->hc_control & OHCI_CTRL_HCFS) {
	case OHCI_USB_OPER:
		val = 0;
		break;
	case OHCI_USB_SUSPEND:
	case OHCI_USB_RESUME:
		ohci->hc_control &= OHCI_CTRL_RWC;
		ohci->hc_control |= OHCI_USB_RESUME;
		val = 10 /* msec wait */;
		break;
	// case OHCI_USB_RESET:
	default:
		ohci->hc_control &= OHCI_CTRL_RWC;
		ohci->hc_control |= OHCI_USB_RESET;
		val = 50 /* msec wait */;
		break;
	}
	FUNC11 (ohci, ohci->hc_control, &ohci->regs->control);
	// flush the writes
	(void) FUNC9 (ohci, &ohci->regs->control);
	FUNC5(val);

	FUNC4 (ohci->hcca, 0, sizeof (struct ohci_hcca));

	/* 2msec timelimit here means no irqs/preempt */
	FUNC17 (&ohci->lock);

retry:
	/* HC Reset requires max 10 us delay */
	FUNC11 (ohci, OHCI_HCR,  &ohci->regs->cmdstatus);
	val = 30;	/* ... allow extra time */
	while ((FUNC9 (ohci, &ohci->regs->cmdstatus) & OHCI_HCR) != 0) {
		if (--val == 0) {
			FUNC18 (&ohci->lock);
			FUNC8 (ohci, "USB HC reset timed out!\n");
			return -1;
		}
		FUNC19 (1);
	}

	/* now we're in the SUSPEND state ... must go OPERATIONAL
	 * within 2msec else HC enters RESUME
	 *
	 * ... but some hardware won't init fmInterval "by the book"
	 * (SiS, OPTi ...), so reset again instead.  SiS doesn't need
	 * this if we write fmInterval after we're OPERATIONAL.
	 * Unclear about ALi, ServerWorks, and others ... this could
	 * easily be a longstanding bug in chip init on Linux.
	 */
	if (ohci->flags & OHCI_QUIRK_INITRESET) {
		FUNC11 (ohci, ohci->hc_control, &ohci->regs->control);
		// flush those writes
		(void) FUNC9 (ohci, &ohci->regs->control);
	}

	/* Tell the controller where the control and bulk lists are
	 * The lists are empty now. */
	FUNC11 (ohci, 0, &ohci->regs->ed_controlhead);
	FUNC11 (ohci, 0, &ohci->regs->ed_bulkhead);

	/* a reset clears this */
	FUNC11 (ohci, (u32) ohci->hcca_dma, &ohci->regs->hcca);

	FUNC12 (ohci);

	/* some OHCI implementations are finicky about how they init.
	 * bogus values here mean not even enumeration could work.
	 */
	if ((FUNC9 (ohci, &ohci->regs->fminterval) & 0x3fff0000) == 0
			|| !FUNC9 (ohci, &ohci->regs->periodicstart)) {
		if (!(ohci->flags & OHCI_QUIRK_INITRESET)) {
			ohci->flags |= OHCI_QUIRK_INITRESET;
			FUNC6 (ohci, "enabling initreset quirk\n");
			goto retry;
		}
		FUNC18 (&ohci->lock);
		FUNC8 (ohci, "init err (%08x %04x)\n",
			FUNC9 (ohci, &ohci->regs->fminterval),
			FUNC9 (ohci, &ohci->regs->periodicstart));
		return -EOVERFLOW;
	}

	/* use rhsc irqs after khubd is fully initialized */
	FUNC15(HCD_FLAG_POLL_RH, &hcd->flags);
	hcd->uses_new_polling = 1;

	/* start controller operations */
	ohci->hc_control &= OHCI_CTRL_RWC;
	ohci->hc_control |= OHCI_CONTROL_INIT | OHCI_USB_OPER;
	FUNC11 (ohci, ohci->hc_control, &ohci->regs->control);
	hcd->state = HC_STATE_RUNNING;

	/* wake on ConnectStatusChange, matching external hubs */
	FUNC11 (ohci, RH_HS_DRWE, &ohci->regs->roothub.status);

	/* Choose the interrupts we care about now, others later on demand */
	mask = OHCI_INTR_INIT;
	FUNC11 (ohci, ~0, &ohci->regs->intrstatus);
	FUNC11 (ohci, mask, &ohci->regs->intrenable);

	/* handle root hub init quirks ... */
	val = FUNC14 (ohci);
	val &= ~(RH_A_PSM | RH_A_OCPM);
	if (ohci->flags & OHCI_QUIRK_SUPERIO) {
		/* NSC 87560 and maybe others */
		val |= RH_A_NOCP;
		val &= ~(RH_A_POTPGT | RH_A_NPS);
		FUNC11 (ohci, val, &ohci->regs->roothub.a);
	} else if ((ohci->flags & OHCI_QUIRK_AMD756) ||
			(ohci->flags & OHCI_QUIRK_HUB_POWER)) {
		/* hub power always on; required for AMD-756 and some
		 * Mac platforms.  ganged overcurrent reporting, if any.
		 */
		val |= RH_A_NPS;
		FUNC11 (ohci, val, &ohci->regs->roothub.a);
	}
	FUNC11 (ohci, RH_HS_LPSC, &ohci->regs->roothub.status);
	FUNC11 (ohci, (val & RH_A_NPS) ? 0 : RH_B_PPCM,
						&ohci->regs->roothub.b);
	// flush those writes
	(void) FUNC9 (ohci, &ohci->regs->control);

	ohci->next_statechange = jiffies + STATECHANGE_DELAY;
	FUNC18 (&ohci->lock);

	// POTPGT delay is bits 24-31, in 2 ms units.
	FUNC3 ((val >> 23) & 0x1fe);
	hcd->state = HC_STATE_RUNNING;

	if (FUNC13(ohci)) {
		/* Create timer to watch for bad queue state on ZF Micro */
		FUNC16(&ohci->unlink_watchdog, unlink_watchdog_func,
				(unsigned long) ohci);

		ohci->eds_scheduled = 0;
		ohci->ed_to_check = NULL;
	}

	FUNC7 (ohci, 1);

	return 0;
}
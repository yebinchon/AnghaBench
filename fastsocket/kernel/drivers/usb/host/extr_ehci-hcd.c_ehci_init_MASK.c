#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct usb_hcd {int dummy; } ;
struct ehci_qh_hw {int /*<<< orphan*/  hw_alt_next; int /*<<< orphan*/  hw_qtd_next; void* hw_token; void* hw_info1; int /*<<< orphan*/  hw_next; } ;
struct TYPE_10__ {unsigned long data; int /*<<< orphan*/  function; } ;
struct ehci_hcd {int need_io_watchdog; int periodic_size; int i_thresh; int next_uframe; int clock_frame; int has_ppcd; int has_lpm; int command; TYPE_4__* async; int /*<<< orphan*/ * reclaim; TYPE_1__* caps; int /*<<< orphan*/  cached_sitd_list; int /*<<< orphan*/  cached_itd_list; TYPE_5__ iaa_watchdog; TYPE_5__ watchdog; int /*<<< orphan*/  lock; } ;
struct TYPE_7__ {int /*<<< orphan*/ * qh; } ;
struct TYPE_9__ {TYPE_3__* dummy; int /*<<< orphan*/  qh_state; int /*<<< orphan*/  qh_dma; struct ehci_qh_hw* hw; TYPE_2__ qh_next; } ;
struct TYPE_8__ {int /*<<< orphan*/  qtd_dma; } ;
struct TYPE_6__ {int /*<<< orphan*/  hcc_params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int CMD_PARK ; 
 int CMD_PPCEE ; 
 int DEFAULT_I_TDPS ; 
 int /*<<< orphan*/  FUNC1 (struct ehci_hcd*) ; 
 int EHCI_TUNE_FLS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  QH_HEAD ; 
 int /*<<< orphan*/  FUNC9 (struct ehci_hcd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QH_STATE_LINKED ; 
 int /*<<< orphan*/  FUNC10 (struct ehci_hcd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QTD_STS_HALT ; 
 void* FUNC11 (struct ehci_hcd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ehci_hcd*,char*,...) ; 
 int /*<<< orphan*/  ehci_iaa_watchdog ; 
 int FUNC13 (struct ehci_hcd*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct ehci_hcd*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ehci_watchdog ; 
 struct ehci_hcd* FUNC15 (struct usb_hcd*) ; 
 int hird ; 
 int /*<<< orphan*/  FUNC16 (TYPE_5__*) ; 
 int log2_irq_thresh ; 
 int FUNC17 (int,unsigned int) ; 
 int park ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC19(struct usb_hcd *hcd)
{
	struct ehci_hcd		*ehci = FUNC15(hcd);
	u32			temp;
	int			retval;
	u32			hcc_params;
	struct ehci_qh_hw	*hw;

	FUNC18(&ehci->lock);

	/*
	 * keep io watchdog by default, those good HCDs could turn off it later
	 */
	ehci->need_io_watchdog = 1;
	FUNC16(&ehci->watchdog);
	ehci->watchdog.function = ehci_watchdog;
	ehci->watchdog.data = (unsigned long) ehci;

	FUNC16(&ehci->iaa_watchdog);
	ehci->iaa_watchdog.function = ehci_iaa_watchdog;
	ehci->iaa_watchdog.data = (unsigned long) ehci;

	/*
	 * hw default: 1K periodic list heads, one per frame.
	 * periodic_size can shrink by USBCMD update if hcc_params allows.
	 */
	ehci->periodic_size = DEFAULT_I_TDPS;
	FUNC8(&ehci->cached_itd_list);
	FUNC8(&ehci->cached_sitd_list);
	if ((retval = FUNC13(ehci, GFP_KERNEL)) < 0)
		return retval;

	/* controllers may cache some of the periodic schedule ... */
	hcc_params = FUNC14(ehci, &ehci->caps->hcc_params);
	if (FUNC3(hcc_params))		// full frame cache
		ehci->i_thresh = 8;
	else					// N microframes cached
		ehci->i_thresh = 2 + FUNC4(hcc_params);

	ehci->reclaim = NULL;
	ehci->next_uframe = -1;
	ehci->clock_frame = -1;

	/*
	 * dedicate a qh for the async ring head, since we couldn't unlink
	 * a 'real' qh without stopping the async schedule [4.8].  use it
	 * as the 'reclamation list head' too.
	 * its dummy is used in hw_alt_next of many tds, to prevent the qh
	 * from automatically advancing to the next td after short reads.
	 */
	ehci->async->qh_next.qh = NULL;
	hw = ehci->async->hw;
	hw->hw_next = FUNC9(ehci, ehci->async->qh_dma);
	hw->hw_info1 = FUNC11(ehci, QH_HEAD);
	hw->hw_token = FUNC11(ehci, QTD_STS_HALT);
	hw->hw_qtd_next = FUNC1(ehci);
	ehci->async->qh_state = QH_STATE_LINKED;
	hw->hw_alt_next = FUNC10(ehci, ehci->async->dummy->qtd_dma);

	/* clear interrupt enables, set irq latency */
	if (log2_irq_thresh < 0 || log2_irq_thresh > 6)
		log2_irq_thresh = 0;
	temp = 1 << (16 + log2_irq_thresh);
	if (FUNC6(hcc_params)) {
		ehci->has_ppcd = 1;
		FUNC12(ehci, "enable per-port change event\n");
		temp |= CMD_PPCEE;
	}
	if (FUNC2(hcc_params)) {
		/* HW default park == 3, on hardware that supports it (like
		 * NVidia and ALI silicon), maximizes throughput on the async
		 * schedule by avoiding QH fetches between transfers.
		 *
		 * With fast usb storage devices and NForce2, "park" seems to
		 * make problems:  throughput reduction (!), data errors...
		 */
		if (park) {
			park = FUNC17(park, (unsigned) 3);
			temp |= CMD_PARK;
			temp |= park << 8;
		}
		FUNC12(ehci, "park %d\n", park);
	}
	if (FUNC7(hcc_params)) {
		/* periodic schedule size can be smaller than default */
		temp &= ~(3 << 2);
		temp |= (EHCI_TUNE_FLS << 2);
		switch (EHCI_TUNE_FLS) {
		case 0: ehci->periodic_size = 1024; break;
		case 1: ehci->periodic_size = 512; break;
		case 2: ehci->periodic_size = 256; break;
		default:	FUNC0();
		}
	}
	if (FUNC5(hcc_params)) {
		/* support link power management EHCI 1.1 addendum */
		FUNC12(ehci, "support lpm\n");
		ehci->has_lpm = 1;
		if (hird > 0xf) {
			FUNC12(ehci, "hird %d invalid, use default 0",
			hird);
			hird = 0;
		}
		temp |= hird << 24;
	}
	ehci->command = temp;

	return 0;
}
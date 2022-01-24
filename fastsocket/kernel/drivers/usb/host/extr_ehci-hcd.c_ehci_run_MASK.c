#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_6__ {int /*<<< orphan*/  controller; } ;
struct usb_hcd {int uses_new_polling; int /*<<< orphan*/  state; TYPE_2__ self; } ;
struct ehci_hcd {int periodic_dma; int command; int sbrn; TYPE_4__* regs; TYPE_3__* caps; int /*<<< orphan*/  last_periodic_enable; TYPE_1__* async; } ;
struct TYPE_8__ {int /*<<< orphan*/  intr_enable; int /*<<< orphan*/  command; int /*<<< orphan*/  configured_flag; int /*<<< orphan*/  segment; int /*<<< orphan*/  async_next; int /*<<< orphan*/  frame_list; } ;
struct TYPE_7__ {int /*<<< orphan*/  hc_capbase; int /*<<< orphan*/  hcc_params; } ;
struct TYPE_5__ {scalar_t__ qh_dma; } ;

/* Variables and functions */
 int CMD_ASE ; 
 int CMD_IAAD ; 
 int CMD_LRESET ; 
 int CMD_PSE ; 
 int CMD_RESET ; 
 int CMD_RUN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FLAG_CF ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  HC_STATE_RUNNING ; 
 int FUNC2 (int) ; 
 int INTR_MASK ; 
 int /*<<< orphan*/  FUNC3 (struct ehci_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (struct ehci_hcd*) ; 
 int /*<<< orphan*/  FUNC5 (struct ehci_hcd*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ehci_cf_port_reset_rwsem ; 
 int /*<<< orphan*/  FUNC8 (struct ehci_hcd*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct ehci_hcd*) ; 
 int FUNC10 (struct ehci_hcd*,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct ehci_hcd*) ; 
 int /*<<< orphan*/  FUNC12 (struct ehci_hcd*,int,int /*<<< orphan*/ *) ; 
 struct ehci_hcd* FUNC13 (struct usb_hcd*) ; 
 scalar_t__ ignore_oc ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17 (struct usb_hcd *hcd)
{
	struct ehci_hcd		*ehci = FUNC13 (hcd);
	int			retval;
	u32			temp;
	u32			hcc_params;

	hcd->uses_new_polling = 1;

	/* EHCI spec section 4.1 */
	if ((retval = FUNC11(ehci)) != 0) {
		FUNC9(ehci);
		return retval;
	}
	FUNC12(ehci, ehci->periodic_dma, &ehci->regs->frame_list);
	FUNC12(ehci, (u32)ehci->async->qh_dma, &ehci->regs->async_next);

	/*
	 * hcc_params controls whether ehci->regs->segment must (!!!)
	 * be used; it constrains QH/ITD/SITD and QTD locations.
	 * pci_pool consistent memory always uses segment zero.
	 * streaming mappings for I/O buffers, like pci_map_single(),
	 * can return segments above 4GB, if the device allows.
	 *
	 * NOTE:  the dma mask is visible through dma_supported(), so
	 * drivers can pass this info along ... like NETIF_F_HIGHDMA,
	 * Scsi_Host.highmem_io, and so forth.  It's readonly to all
	 * host side drivers though.
	 */
	hcc_params = FUNC10(ehci, &ehci->caps->hcc_params);
	if (FUNC1(hcc_params)) {
		FUNC12(ehci, 0, &ehci->regs->segment);
#if 0
// this is deeply broken on almost all architectures
		if (!dma_set_mask(hcd->self.controller, DMA_BIT_MASK(64)))
			ehci_info(ehci, "enabled 64bit DMA\n");
#endif
	}


	// Philips, Intel, and maybe others need CMD_RUN before the
	// root hub will detect new devices (why?); NEC doesn't
	ehci->command &= ~(CMD_LRESET|CMD_IAAD|CMD_PSE|CMD_ASE|CMD_RESET);
	ehci->command |= CMD_RUN;
	FUNC12(ehci, ehci->command, &ehci->regs->command);
	FUNC5 (ehci, "init", ehci->command);

	/*
	 * Start, enabling full USB 2.0 functionality ... usb 1.1 devices
	 * are explicitly handed to companion controller(s), so no TT is
	 * involved with the root hub.  (Except where one is integrated,
	 * and there's no companion controller unless maybe for USB OTG.)
	 *
	 * Turning on the CF flag will transfer ownership of all ports
	 * from the companions to the EHCI controller.  If any of the
	 * companions are in the middle of a port reset at the time, it
	 * could cause trouble.  Write-locking ehci_cf_port_reset_rwsem
	 * guarantees that no resets are in progress.  After we set CF,
	 * a short delay lets the hardware catch up; new resets shouldn't
	 * be started before the port switching actions could complete.
	 */
	FUNC7(&ehci_cf_port_reset_rwsem);
	hcd->state = HC_STATE_RUNNING;
	FUNC12(ehci, FLAG_CF, &ehci->regs->configured_flag);
	FUNC10(ehci, &ehci->regs->command);	/* unblock posted writes */
	FUNC15(5);
	FUNC16(&ehci_cf_port_reset_rwsem);
	ehci->last_periodic_enable = FUNC14();

	temp = FUNC2(FUNC10(ehci, &ehci->caps->hc_capbase));
	FUNC8 (ehci,
		"USB %x.%x started, EHCI %x.%02x%s\n",
		((ehci->sbrn & 0xf0)>>4), (ehci->sbrn & 0x0f),
		temp >> 8, temp & 0xff,
		ignore_oc ? ", overcurrent ignored" : "");

	FUNC12(ehci, INTR_MASK,
		    &ehci->regs->intr_enable); /* Turn On Interrupts */

	/* GRR this is run-once init(), being done every time the HC starts.
	 * So long as they're part of class devices, we can't do it init()
	 * since the class device isn't created that early.
	 */
	FUNC4(ehci);
	FUNC3(ehci);

	return 0;
}
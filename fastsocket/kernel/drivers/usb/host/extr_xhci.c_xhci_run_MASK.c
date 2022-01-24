#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct TYPE_7__ {unsigned long data; scalar_t__ expires; int /*<<< orphan*/  function; } ;
struct xhci_hcd {int quirks; TYPE_2__* ir_set; TYPE_1__* op_regs; int /*<<< orphan*/  event_ring; int /*<<< orphan*/  erst; int /*<<< orphan*/  cmd_ring; TYPE_3__ event_ring_timer; scalar_t__ zombie; } ;
struct usb_hcd {int uses_new_polling; } ;
struct TYPE_6__ {int /*<<< orphan*/  irq_pending; int /*<<< orphan*/  irq_control; int /*<<< orphan*/  erst_dequeue; } ;
struct TYPE_5__ {int /*<<< orphan*/  command; } ;

/* Variables and functions */
 scalar_t__ CMD_EIE ; 
 scalar_t__ ERST_PTR_MASK ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ ER_IRQ_INTERVAL_MASK ; 
 int HZ ; 
 int POLL_TIMEOUT ; 
 int /*<<< orphan*/  TRB_NEC_GET_FW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int XHCI_NEC_HOST ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 struct xhci_hcd* FUNC3 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC5 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC6 (struct xhci_hcd*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct xhci_hcd*) ; 
 int /*<<< orphan*/  FUNC8 (struct xhci_hcd*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct xhci_hcd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct xhci_hcd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xhci_event_ring_work ; 
 int /*<<< orphan*/  FUNC11 (struct xhci_hcd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct xhci_hcd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct xhci_hcd*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (struct xhci_hcd*,int /*<<< orphan*/ *) ; 
 int FUNC15 (struct xhci_hcd*) ; 
 int FUNC16 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC17 (struct xhci_hcd*,scalar_t__,int /*<<< orphan*/ *) ; 

int FUNC18(struct usb_hcd *hcd)
{
	u32 temp;
	u64 temp_64;
	int ret;
	struct xhci_hcd *xhci = FUNC3(hcd);

	/* Start the xHCI host controller running only after the USB 2.0 roothub
	 * is setup.
	 */

	hcd->uses_new_polling = 1;
	if (!FUNC5(hcd))
		return FUNC15(xhci);

	FUNC6(xhci, "xhci_run\n");

	ret = FUNC16(hcd);
	if (ret)
		return ret;

#ifdef CONFIG_USB_XHCI_HCD_DEBUGGING
	init_timer(&xhci->event_ring_timer);
	xhci->event_ring_timer.data = (unsigned long) xhci;
	xhci->event_ring_timer.function = xhci_event_ring_work;
	/* Poll the event ring */
	xhci->event_ring_timer.expires = jiffies + POLL_TIMEOUT * HZ;
	xhci->zombie = 0;
	xhci_dbg(xhci, "Setting event ring polling timer\n");
	add_timer(&xhci->event_ring_timer);
#endif

	FUNC6(xhci, "Command ring memory map follows:\n");
	FUNC10(xhci, xhci->cmd_ring);
	FUNC9(xhci, xhci->cmd_ring);
	FUNC7(xhci);

	FUNC6(xhci, "ERST memory map follows:\n");
	FUNC8(xhci, &xhci->erst);
	FUNC6(xhci, "Event ring:\n");
	FUNC10(xhci, xhci->event_ring);
	FUNC9(xhci, xhci->event_ring);
	temp_64 = FUNC13(xhci, &xhci->ir_set->erst_dequeue);
	temp_64 &= ~ERST_PTR_MASK;
	FUNC6(xhci, "ERST deq = 64'h%0lx\n", (long unsigned int) temp_64);

	FUNC6(xhci, "// Set the interrupt modulation register\n");
	temp = FUNC14(xhci, &xhci->ir_set->irq_control);
	temp &= ~ER_IRQ_INTERVAL_MASK;
	temp |= (u32) 160;
	FUNC17(xhci, temp, &xhci->ir_set->irq_control);

	/* Set the HCD state before we enable the irqs */
	temp = FUNC14(xhci, &xhci->op_regs->command);
	temp |= (CMD_EIE);
	FUNC6(xhci, "// Enable interrupts, cmd = 0x%x.\n",
			temp);
	FUNC17(xhci, temp, &xhci->op_regs->command);

	temp = FUNC14(xhci, &xhci->ir_set->irq_pending);
	FUNC6(xhci, "// Enabling event ring interrupter %p by writing 0x%x to irq_pending\n",
			xhci->ir_set, (unsigned int) FUNC0(temp));
	FUNC17(xhci, FUNC0(temp),
			&xhci->ir_set->irq_pending);
	FUNC11(xhci, 0);

	if (xhci->quirks & XHCI_NEC_HOST)
		FUNC12(xhci, 0, 0, 0,
				FUNC1(TRB_NEC_GET_FW));

	FUNC6(xhci, "Finished xhci_run for USB2 roothub\n");
	return 0;
}
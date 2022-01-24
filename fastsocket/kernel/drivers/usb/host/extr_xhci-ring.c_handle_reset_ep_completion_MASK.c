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
struct TYPE_5__ {int /*<<< orphan*/ * field; } ;
union xhci_trb {TYPE_1__ generic; } ;
struct xhci_hcd {int quirks; TYPE_4__** devs; } ;
struct xhci_event_cmd {int /*<<< orphan*/  status; } ;
struct TYPE_8__ {TYPE_3__* eps; TYPE_2__* in_ctx; } ;
struct TYPE_7__ {int /*<<< orphan*/  ep_state; } ;
struct TYPE_6__ {int /*<<< orphan*/  dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  EP_HALTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int XHCI_RESET_EP_QUIRK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xhci_hcd*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct xhci_hcd*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct xhci_hcd*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct xhci_hcd*) ; 

__attribute__((used)) static void FUNC8(struct xhci_hcd *xhci,
		struct xhci_event_cmd *event,
		union xhci_trb *trb)
{
	int slot_id;
	unsigned int ep_index;

	slot_id = FUNC2(FUNC3(trb->generic.field[3]));
	ep_index = FUNC1(FUNC3(trb->generic.field[3]));
	/* This command will only fail if the endpoint wasn't halted,
	 * but we don't care.
	 */
	FUNC5(xhci, "Ignoring reset ep completion code of %u\n",
		 FUNC0(FUNC3(event->status)));

	/* HW with the reset endpoint quirk needs to have a configure endpoint
	 * command complete before the endpoint can be used.  Queue that here
	 * because the HW can't handle two commands being queued in a row.
	 */
	if (xhci->quirks & XHCI_RESET_EP_QUIRK) {
		FUNC5(xhci, "Queueing configure endpoint command\n");
		FUNC6(xhci,
				xhci->devs[slot_id]->in_ctx->dma, slot_id,
				false);
		FUNC7(xhci);
	} else {
		/* Clear our internal halted state and restart the ring(s) */
		xhci->devs[slot_id]->eps[ep_index].ep_state &= ~EP_HALTED;
		FUNC4(xhci, slot_id, ep_index);
	}
}
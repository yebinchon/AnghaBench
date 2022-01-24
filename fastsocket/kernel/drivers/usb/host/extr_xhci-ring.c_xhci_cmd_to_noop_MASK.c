#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__* field; } ;
union xhci_trb {TYPE_1__ generic; } ;
typedef  int u32 ;
struct xhci_segment {int dummy; } ;
struct xhci_hcd {TYPE_2__* cmd_ring; } ;
struct xhci_cd {scalar_t__ command; union xhci_trb* cmd_trb; } ;
struct TYPE_6__ {union xhci_trb* enqueue; union xhci_trb* dequeue; int /*<<< orphan*/  deq_seg; int /*<<< orphan*/  first_seg; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_CMD_STOP ; 
 int /*<<< orphan*/  TRB_CMD_NOOP ; 
 int TRB_CYCLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 
 struct xhci_segment* FUNC3 (int /*<<< orphan*/ ,union xhci_trb*,int*) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct xhci_hcd*,TYPE_2__*,struct xhci_segment**,union xhci_trb**) ; 
 int /*<<< orphan*/  FUNC6 (struct xhci_hcd*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct xhci_hcd*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (struct xhci_hcd*,TYPE_2__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,union xhci_trb*) ; 
 int /*<<< orphan*/  FUNC10 (struct xhci_hcd*,char*,union xhci_trb*,unsigned long long) ; 

__attribute__((used)) static void FUNC11(struct xhci_hcd *xhci, struct xhci_cd *cur_cd)
{
	struct xhci_segment *cur_seg;
	union xhci_trb *cmd_trb;
	u32 cycle_state;

	if (xhci->cmd_ring->dequeue == xhci->cmd_ring->enqueue)
		return;

	/* find the current segment of command ring */
	cur_seg = FUNC3(xhci->cmd_ring->first_seg,
			xhci->cmd_ring->dequeue, &cycle_state);

	if (!cur_seg) {
		FUNC10(xhci, "Command ring mismatch, dequeue = %p %llx (dma)\n",
				xhci->cmd_ring->dequeue,
				(unsigned long long)
				FUNC9(xhci->cmd_ring->deq_seg,
					xhci->cmd_ring->dequeue));
		FUNC8(xhci, xhci->cmd_ring);
		FUNC7(xhci, xhci->cmd_ring);
		return;
	}

	/* find the command trb matched by cd from command ring */
	for (cmd_trb = xhci->cmd_ring->dequeue;
			cmd_trb != xhci->cmd_ring->enqueue;
			FUNC5(xhci, xhci->cmd_ring, &cur_seg, &cmd_trb)) {
		/* If the trb is link trb, continue */
		if (FUNC1(cmd_trb->generic.field[3]))
			continue;

		if (cur_cd->cmd_trb == cmd_trb) {

			/* If the command in device's command list, we should
			 * finish it and free the command structure.
			 */
			if (cur_cd->command)
				FUNC6(xhci,
					cur_cd->command, COMP_CMD_STOP);

			/* get cycle state from the origin command trb */
			cycle_state = FUNC4(cmd_trb->generic.field[3])
				& TRB_CYCLE;

			/* modify the command trb to NO OP command */
			cmd_trb->generic.field[0] = 0;
			cmd_trb->generic.field[1] = 0;
			cmd_trb->generic.field[2] = 0;
			cmd_trb->generic.field[3] = FUNC2(
					FUNC0(TRB_CMD_NOOP) | cycle_state);
			break;
		}
	}
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct xhci_virt_device {int /*<<< orphan*/  cmd_list; TYPE_2__* eps; } ;
struct xhci_hcd {int /*<<< orphan*/  lock; TYPE_3__* cmd_ring; struct xhci_virt_device** devs; } ;
struct TYPE_9__ {scalar_t__ next; } ;
struct xhci_command {TYPE_4__ cmd_list; int /*<<< orphan*/  completion; int /*<<< orphan*/  command_trb; } ;
struct TYPE_8__ {int /*<<< orphan*/  enqueue; } ;
struct TYPE_7__ {TYPE_1__* ring; } ;
struct TYPE_6__ {scalar_t__ dequeue; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ETIME ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int LAST_EP_INDEX ; 
 scalar_t__ LIST_POISON1 ; 
 int /*<<< orphan*/  USB_CTRL_SET_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct xhci_command* FUNC5 (struct xhci_hcd*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct xhci_hcd*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct xhci_hcd*,struct xhci_command*) ; 
 int /*<<< orphan*/  FUNC8 (struct xhci_hcd*,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct xhci_hcd*) ; 
 int /*<<< orphan*/  FUNC10 (struct xhci_hcd*,char*,char*) ; 

__attribute__((used)) static int FUNC11(struct xhci_hcd *xhci, int slot_id, int suspend)
{
	struct xhci_virt_device *virt_dev;
	struct xhci_command *cmd;
	unsigned long flags;
	int timeleft;
	int ret;
	int i;

	ret = 0;
	virt_dev = xhci->devs[slot_id];
	cmd = FUNC5(xhci, false, true, GFP_NOIO);
	if (!cmd) {
		FUNC6(xhci, "Couldn't allocate command structure.\n");
		return -ENOMEM;
	}

	FUNC2(&xhci->lock, flags);
	for (i = LAST_EP_INDEX; i > 0; i--) {
		if (virt_dev->eps[i].ring && virt_dev->eps[i].ring->dequeue)
			FUNC8(xhci, slot_id, i, suspend);
	}
	cmd->command_trb = xhci->cmd_ring->enqueue;
	FUNC0(&cmd->cmd_list, &virt_dev->cmd_list);
	FUNC8(xhci, slot_id, 0, suspend);
	FUNC9(xhci);
	FUNC3(&xhci->lock, flags);

	/* Wait for last stop endpoint command to finish */
	timeleft = FUNC4(
			cmd->completion,
			USB_CTRL_SET_TIMEOUT);
	if (timeleft <= 0) {
		FUNC10(xhci, "%s while waiting for stop endpoint command\n",
				timeleft == 0 ? "Timeout" : "Signal");
		FUNC2(&xhci->lock, flags);
		/* The timeout might have raced with the event ring handler, so
		 * only delete from the list if the item isn't poisoned.
		 */
		if (cmd->cmd_list.next != LIST_POISON1)
			FUNC1(&cmd->cmd_list);
		FUNC3(&xhci->lock, flags);
		ret = -ETIME;
		goto command_cleanup;
	}

command_cleanup:
	FUNC7(xhci, cmd);
	return ret;
}
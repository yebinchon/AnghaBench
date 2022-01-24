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
typedef  union xhci_trb {int dummy; } xhci_trb ;
typedef  int /*<<< orphan*/  u32 ;
struct completion {int dummy; } ;
struct xhci_virt_device {int /*<<< orphan*/  cmd_status; struct completion cmd_completion; int /*<<< orphan*/  cmd_list; struct xhci_container_ctx* in_ctx; } ;
struct xhci_hcd {int quirks; int /*<<< orphan*/  lock; TYPE_5__* cmd_ring; int /*<<< orphan*/  num_active_eps; struct xhci_virt_device** devs; } ;
struct xhci_container_ctx {int /*<<< orphan*/  dma; } ;
struct xhci_command {int /*<<< orphan*/  cmd_list; TYPE_2__* command_trb; int /*<<< orphan*/  status; struct completion* completion; struct xhci_container_ctx* in_ctx; } ;
struct usb_device {size_t slot_id; } ;
struct TYPE_10__ {union xhci_trb* dequeue; TYPE_4__* enq_seg; TYPE_2__* enqueue; } ;
struct TYPE_9__ {TYPE_3__* next; } ;
struct TYPE_8__ {TYPE_2__* trbs; } ;
struct TYPE_6__ {int /*<<< orphan*/  control; } ;
struct TYPE_7__ {TYPE_1__ link; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ETIME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XHCI_CMD_DEFAULT_TIMEOUT ; 
 int XHCI_EP_LIMIT_QUIRK ; 
 int XHCI_SW_BW_CHECKING ; 
 int /*<<< orphan*/  FUNC1 (struct completion*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC6 (struct completion*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct xhci_hcd*,struct xhci_command*,union xhci_trb*) ; 
 int FUNC8 (struct xhci_hcd*,struct usb_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct xhci_hcd*,char*) ; 
 int FUNC10 (struct xhci_hcd*,struct usb_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct xhci_hcd*,struct xhci_container_ctx*) ; 
 int /*<<< orphan*/  FUNC12 (struct xhci_hcd*,struct xhci_container_ctx*) ; 
 int FUNC13 (struct xhci_hcd*,int /*<<< orphan*/ ,size_t,int) ; 
 int FUNC14 (struct xhci_hcd*,int /*<<< orphan*/ ,size_t,int) ; 
 scalar_t__ FUNC15 (struct xhci_hcd*,struct xhci_virt_device*,struct xhci_container_ctx*) ; 
 scalar_t__ FUNC16 (struct xhci_hcd*,struct xhci_container_ctx*) ; 
 int /*<<< orphan*/  FUNC17 (struct xhci_hcd*) ; 
 int /*<<< orphan*/  FUNC18 (struct xhci_hcd*,char*,...) ; 

__attribute__((used)) static int FUNC19(struct xhci_hcd *xhci,
		struct usb_device *udev,
		struct xhci_command *command,
		bool ctx_change, bool must_succeed)
{
	int ret;
	int timeleft;
	unsigned long flags;
	struct xhci_container_ctx *in_ctx;
	struct completion *cmd_completion;
	u32 *cmd_status;
	struct xhci_virt_device *virt_dev;
	union xhci_trb *cmd_trb;

	FUNC4(&xhci->lock, flags);
	virt_dev = xhci->devs[udev->slot_id];

	if (command)
		in_ctx = command->in_ctx;
	else
		in_ctx = virt_dev->in_ctx;

	if ((xhci->quirks & XHCI_EP_LIMIT_QUIRK) &&
			FUNC16(xhci, in_ctx)) {
		FUNC5(&xhci->lock, flags);
		FUNC18(xhci, "Not enough host resources, "
				"active endpoint contexts = %u\n",
				xhci->num_active_eps);
		return -ENOMEM;
	}
	if ((xhci->quirks & XHCI_SW_BW_CHECKING) &&
			FUNC15(xhci, virt_dev, in_ctx)) {
		if ((xhci->quirks & XHCI_EP_LIMIT_QUIRK))
			FUNC12(xhci, in_ctx);
		FUNC5(&xhci->lock, flags);
		FUNC18(xhci, "Not enough bandwidth\n");
		return -ENOMEM;
	}

	if (command) {
		cmd_completion = command->completion;
		cmd_status = &command->status;
		command->command_trb = xhci->cmd_ring->enqueue;

		/* Enqueue pointer can be left pointing to the link TRB,
		 * we must handle that
		 */
		if (FUNC0(command->command_trb->link.control))
			command->command_trb =
				xhci->cmd_ring->enq_seg->next->trbs;

		FUNC2(&command->cmd_list, &virt_dev->cmd_list);
	} else {
		cmd_completion = &virt_dev->cmd_completion;
		cmd_status = &virt_dev->cmd_status;
	}
	FUNC1(cmd_completion);

	cmd_trb = xhci->cmd_ring->dequeue;
	if (!ctx_change)
		ret = FUNC13(xhci, in_ctx->dma,
				udev->slot_id, must_succeed);
	else
		ret = FUNC14(xhci, in_ctx->dma,
				udev->slot_id, must_succeed);
	if (ret < 0) {
		if (command)
			FUNC3(&command->cmd_list);
		if ((xhci->quirks & XHCI_EP_LIMIT_QUIRK))
			FUNC12(xhci, in_ctx);
		FUNC5(&xhci->lock, flags);
		FUNC9(xhci, "FIXME allocate a new ring segment\n");
		return -ENOMEM;
	}
	FUNC17(xhci);
	FUNC5(&xhci->lock, flags);

	/* Wait for the configure endpoint command to complete */
	timeleft = FUNC6(
			cmd_completion,
			XHCI_CMD_DEFAULT_TIMEOUT);
	if (timeleft <= 0) {
		FUNC18(xhci, "%s while waiting for %s command\n",
				timeleft == 0 ? "Timeout" : "Signal",
				ctx_change == 0 ?
					"configure endpoint" :
					"evaluate context");
		/* cancel the configure endpoint command */
		ret = FUNC7(xhci, command, cmd_trb);
		if (ret < 0)
			return ret;
		return -ETIME;
	}

	if (!ctx_change)
		ret = FUNC8(xhci, udev, cmd_status);
	else
		ret = FUNC10(xhci, udev, cmd_status);

	if ((xhci->quirks & XHCI_EP_LIMIT_QUIRK)) {
		FUNC4(&xhci->lock, flags);
		/* If the command failed, remove the reserved resources.
		 * Otherwise, clean up the estimate to include dropped eps.
		 */
		if (ret)
			FUNC12(xhci, in_ctx);
		else
			FUNC11(xhci, in_ctx);
		FUNC5(&xhci->lock, flags);
	}
	return ret;
}
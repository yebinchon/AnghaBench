#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_12__ {scalar_t__ expires; } ;
struct xhci_virt_ep {int ep_state; TYPE_6__ stop_cmd_timer; int /*<<< orphan*/  stop_cmds_pending; int /*<<< orphan*/  cancelled_td_list; } ;
struct xhci_td {int /*<<< orphan*/  cancelled_td_list; int /*<<< orphan*/  first_trb; int /*<<< orphan*/  start_seg; int /*<<< orphan*/  td_list; } ;
struct xhci_ring {int dummy; } ;
struct xhci_hcd {int xhc_state; int /*<<< orphan*/  lock; TYPE_2__** devs; TYPE_1__* op_regs; } ;
struct usb_hcd {int dummy; } ;
struct urb_priv {int td_cnt; int length; struct xhci_td** td; } ;
struct urb {TYPE_4__* dev; TYPE_3__* ep; struct urb_priv* hcpriv; } ;
struct TYPE_11__ {int /*<<< orphan*/  bEndpointAddress; } ;
struct TYPE_10__ {size_t slot_id; int /*<<< orphan*/  devpath; } ;
struct TYPE_9__ {TYPE_5__ desc; } ;
struct TYPE_8__ {struct xhci_virt_ep* eps; } ;
struct TYPE_7__ {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int EINVAL ; 
 int EP_HALT_PENDING ; 
 int /*<<< orphan*/  ESHUTDOWN ; 
 int HZ ; 
 int XHCI_STATE_DYING ; 
 int XHCI_STATE_HALTED ; 
 int XHCI_STOP_EP_CMD_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 struct xhci_hcd* FUNC1 (struct usb_hcd*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC7 (struct usb_hcd*,struct urb*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_hcd*,struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_hcd*,struct urb*) ; 
 int /*<<< orphan*/  FUNC10 (struct xhci_hcd*,char*,...) ; 
 unsigned int FUNC11 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC12 (struct xhci_hcd*,size_t,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct xhci_hcd*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct xhci_hcd*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct xhci_hcd*,struct urb_priv*) ; 
 struct xhci_ring* FUNC17 (struct xhci_hcd*,struct urb*) ; 

int FUNC18(struct usb_hcd *hcd, struct urb *urb, int status)
{
	unsigned long flags;
	int ret, i;
	u32 temp;
	struct xhci_hcd *xhci;
	struct urb_priv	*urb_priv;
	struct xhci_td *td;
	unsigned int ep_index;
	struct xhci_ring *ep_ring;
	struct xhci_virt_ep *ep;

	xhci = FUNC1(hcd);
	FUNC5(&xhci->lock, flags);
	/* Make sure the URB hasn't completed or been unlinked already */
	ret = FUNC7(hcd, urb, status);
	if (ret || !urb->hcpriv)
		goto done;
	temp = FUNC13(xhci, &xhci->op_regs->status);
	if (temp == 0xffffffff || (xhci->xhc_state & XHCI_STATE_HALTED)) {
		FUNC10(xhci, "HW died, freeing TD.\n");
		urb_priv = urb->hcpriv;
		for (i = urb_priv->td_cnt; i < urb_priv->length; i++) {
			td = urb_priv->td[i];
			if (!FUNC4(&td->td_list))
				FUNC3(&td->td_list);
			if (!FUNC4(&td->cancelled_td_list))
				FUNC3(&td->cancelled_td_list);
		}

		FUNC9(hcd, urb);
		FUNC6(&xhci->lock, flags);
		FUNC8(hcd, urb, -ESHUTDOWN);
		FUNC16(xhci, urb_priv);
		return ret;
	}
	if ((xhci->xhc_state & XHCI_STATE_DYING) ||
			(xhci->xhc_state & XHCI_STATE_HALTED)) {
		FUNC10(xhci, "Ep 0x%x: URB %p to be canceled on "
				"non-responsive xHCI host.\n",
				urb->ep->desc.bEndpointAddress, urb);
		/* Let the stop endpoint command watchdog timer (which set this
		 * state) finish cleaning up the endpoint TD lists.  We must
		 * have caught it in the middle of dropping a lock and giving
		 * back an URB.
		 */
		goto done;
	}

	ep_index = FUNC11(&urb->ep->desc);
	ep = &xhci->devs[urb->dev->slot_id]->eps[ep_index];
	ep_ring = FUNC17(xhci, urb);
	if (!ep_ring) {
		ret = -EINVAL;
		goto done;
	}

	urb_priv = urb->hcpriv;
	i = urb_priv->td_cnt;
	if (i < urb_priv->length)
		FUNC10(xhci, "Cancel URB %p, dev %s, ep 0x%x, "
				"starting at offset 0x%llx\n",
				urb, urb->dev->devpath,
				urb->ep->desc.bEndpointAddress,
				(unsigned long long) FUNC15(
					urb_priv->td[i]->start_seg,
					urb_priv->td[i]->first_trb));

	for (; i < urb_priv->length; i++) {
		td = urb_priv->td[i];
		FUNC2(&td->cancelled_td_list, &ep->cancelled_td_list);
	}

	/* Queue a stop endpoint command, but only if this is
	 * the first cancellation to be handled.
	 */
	if (!(ep->ep_state & EP_HALT_PENDING)) {
		ep->ep_state |= EP_HALT_PENDING;
		ep->stop_cmds_pending++;
		ep->stop_cmd_timer.expires = jiffies +
			XHCI_STOP_EP_CMD_TIMEOUT * HZ;
		FUNC0(&ep->stop_cmd_timer);
		FUNC12(xhci, urb->dev->slot_id, ep_index, 0);
		FUNC14(xhci);
	}
done:
	FUNC6(&xhci->lock, flags);
	return ret;
}
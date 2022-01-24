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
struct xhci_td {struct urb* urb; } ;
struct xhci_hcd {int quirks; int /*<<< orphan*/  lock; } ;
struct usb_hcd {int dummy; } ;
struct urb_priv {scalar_t__ td_cnt; scalar_t__ length; } ;
struct urb {int /*<<< orphan*/  pipe; TYPE_1__* dev; struct urb_priv* hcpriv; } ;
struct TYPE_5__ {scalar_t__ bandwidth_isoc_reqs; } ;
struct TYPE_6__ {TYPE_2__ self; } ;
struct TYPE_4__ {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 scalar_t__ PIPE_ISOCHRONOUS ; 
 int XHCI_AMD_PLL_FIX ; 
 struct usb_hcd* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct usb_hcd*,struct urb*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_hcd*,struct urb*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC7 (struct xhci_hcd*) ; 
 int /*<<< orphan*/  FUNC8 (struct xhci_hcd*,struct urb_priv*) ; 

__attribute__((used)) static void FUNC9(struct xhci_hcd *xhci,
		struct xhci_td *cur_td, int status, char *adjective)
{
	struct usb_hcd *hcd;
	struct urb	*urb;
	struct urb_priv	*urb_priv;

	urb = cur_td->urb;
	urb_priv = urb->hcpriv;
	urb_priv->td_cnt++;
	hcd = FUNC0(urb->dev->bus);

	/* Only giveback urb when this is the last td in urb */
	if (urb_priv->td_cnt == urb_priv->length) {
		if (FUNC6(urb->pipe) == PIPE_ISOCHRONOUS) {
			FUNC7(xhci)->self.bandwidth_isoc_reqs--;
			if (FUNC7(xhci)->self.bandwidth_isoc_reqs	== 0) {
				if (xhci->quirks & XHCI_AMD_PLL_FIX)
					FUNC3();
			}
		}
		FUNC5(hcd, urb);

		FUNC2(&xhci->lock);
		FUNC4(hcd, urb, status);
		FUNC8(xhci, urb_priv);
		FUNC1(&xhci->lock);
	}
}
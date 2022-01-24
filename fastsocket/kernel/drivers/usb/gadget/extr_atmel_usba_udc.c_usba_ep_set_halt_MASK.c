#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct usba_udc {int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct usba_ep {scalar_t__ is_in; int /*<<< orphan*/  queue; TYPE_1__ ep; scalar_t__ is_isoc; int /*<<< orphan*/  desc; struct usba_udc* udc; } ;
struct usb_ep {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUSY_BANKS ; 
 int /*<<< orphan*/  CLR_STA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  DBG_ERR ; 
 int /*<<< orphan*/  DBG_GADGET ; 
 int EAGAIN ; 
 int ENODEV ; 
 int ENOTTY ; 
 int /*<<< orphan*/  SET_STA ; 
 int /*<<< orphan*/  STA ; 
 int FUNC1 (int /*<<< orphan*/ ,long) ; 
 int USBA_FORCE_STALL ; 
 int USBA_TOGGLE_CLR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct usba_ep* FUNC5 (struct usb_ep*) ; 
 int FUNC6 (struct usba_ep*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usba_ep*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct usb_ep *_ep, int value)
{
	struct usba_ep *ep = FUNC5(_ep);
	struct usba_udc *udc = ep->udc;
	unsigned long flags;
	int ret = 0;

	FUNC0(DBG_GADGET, "endpoint %s: %s HALT\n", ep->ep.name,
			value ? "set" : "clear");

	if (!ep->desc) {
		FUNC0(DBG_ERR, "Attempted to halt uninitialized ep %s\n",
				ep->ep.name);
		return -ENODEV;
	}
	if (ep->is_isoc) {
		FUNC0(DBG_ERR, "Attempted to halt isochronous ep %s\n",
				ep->ep.name);
		return -ENOTTY;
	}

	FUNC3(&udc->lock, flags);

	/*
	 * We can't halt IN endpoints while there are still data to be
	 * transferred
	 */
	if (!FUNC2(&ep->queue)
			|| ((value && ep->is_in && (FUNC6(ep, STA)
					& FUNC1(BUSY_BANKS, -1L))))) {
		ret = -EAGAIN;
	} else {
		if (value)
			FUNC7(ep, SET_STA, USBA_FORCE_STALL);
		else
			FUNC7(ep, CLR_STA,
					USBA_FORCE_STALL | USBA_TOGGLE_CLR);
		FUNC6(ep, STA);
	}

	FUNC4(&udc->lock, flags);

	return ret;
}
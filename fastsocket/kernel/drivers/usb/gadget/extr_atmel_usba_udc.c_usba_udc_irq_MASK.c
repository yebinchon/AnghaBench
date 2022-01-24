#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_8__ {scalar_t__ speed; } ;
struct usba_udc {int /*<<< orphan*/  lock; TYPE_2__* pdev; TYPE_3__ gadget; TYPE_1__* driver; } ;
struct usba_ep {int /*<<< orphan*/  state; int /*<<< orphan*/ * desc; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* disconnect ) (TYPE_3__*) ;int /*<<< orphan*/  (* resume ) (TYPE_3__*) ;int /*<<< orphan*/  (* suspend ) (TYPE_3__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BK_NUMBER ; 
 int /*<<< orphan*/  CFG ; 
 int /*<<< orphan*/  CTL_ENB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  DBG_BUS ; 
 int /*<<< orphan*/  DBG_INT ; 
 int /*<<< orphan*/  DMA_INT ; 
 int EP0_EPT_SIZE ; 
 int /*<<< orphan*/  EPT_INT ; 
 int /*<<< orphan*/  EPT_SIZE ; 
 int /*<<< orphan*/  EPT_TYPE ; 
 int /*<<< orphan*/  INT_CLR ; 
 int /*<<< orphan*/  INT_ENB ; 
 int /*<<< orphan*/  INT_STA ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int USBA_BK_NUMBER_ONE ; 
 int USBA_DET_SUSPEND ; 
 int USBA_END_OF_RESET ; 
 int USBA_END_OF_RESUME ; 
 int USBA_EPT_ENABLE ; 
 int USBA_EPT_MAPPED ; 
 int USBA_EPT_TYPE_CONTROL ; 
 int USBA_HIGH_SPEED ; 
 int USBA_NR_ENDPOINTS ; 
 int USBA_RX_SETUP ; 
 int USBA_WAKE_UP ; 
 scalar_t__ USB_SPEED_FULL ; 
 scalar_t__ USB_SPEED_HIGH ; 
 scalar_t__ USB_SPEED_UNKNOWN ; 
 int /*<<< orphan*/  WAIT_FOR_SETUP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (struct usba_ep*) ; 
 int /*<<< orphan*/  FUNC5 (struct usba_udc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct usba_udc*,struct usba_ep*) ; 
 int /*<<< orphan*/  FUNC13 (struct usba_udc*,struct usba_ep*) ; 
 struct usba_ep* usba_ep ; 
 int /*<<< orphan*/  usba_ep0_desc ; 
 int /*<<< orphan*/  FUNC14 (struct usba_udc*,struct usba_ep*) ; 
 int FUNC15 (struct usba_ep*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct usba_ep*,int /*<<< orphan*/ ,int) ; 
 int FUNC17 (struct usba_udc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct usba_udc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC19(int irq, void *devid)
{
	struct usba_udc *udc = devid;
	u32 status;
	u32 dma_status;
	u32 ep_status;

	FUNC6(&udc->lock);

	status = FUNC17(udc, INT_STA);
	FUNC0(DBG_INT, "irq, status=%#08x\n", status);

	if (status & USBA_DET_SUSPEND) {
		FUNC11(0);
		FUNC18(udc, INT_CLR, USBA_DET_SUSPEND);
		FUNC0(DBG_BUS, "Suspend detected\n");
		if (udc->gadget.speed != USB_SPEED_UNKNOWN
				&& udc->driver && udc->driver->suspend) {
			FUNC7(&udc->lock);
			udc->driver->suspend(&udc->gadget);
			FUNC6(&udc->lock);
		}
	}

	if (status & USBA_WAKE_UP) {
		FUNC11(1);
		FUNC18(udc, INT_CLR, USBA_WAKE_UP);
		FUNC0(DBG_BUS, "Wake Up CPU detected\n");
	}

	if (status & USBA_END_OF_RESUME) {
		FUNC18(udc, INT_CLR, USBA_END_OF_RESUME);
		FUNC0(DBG_BUS, "Resume detected\n");
		if (udc->gadget.speed != USB_SPEED_UNKNOWN
				&& udc->driver && udc->driver->resume) {
			FUNC7(&udc->lock);
			udc->driver->resume(&udc->gadget);
			FUNC6(&udc->lock);
		}
	}

	dma_status = FUNC2(DMA_INT, status);
	if (dma_status) {
		int i;

		for (i = 1; i < USBA_NR_ENDPOINTS; i++)
			if (dma_status & (1 << i))
				FUNC13(udc, &usba_ep[i]);
	}

	ep_status = FUNC2(EPT_INT, status);
	if (ep_status) {
		int i;

		for (i = 0; i < USBA_NR_ENDPOINTS; i++)
			if (ep_status & (1 << i)) {
				if (FUNC4(&usba_ep[i]))
					FUNC12(udc, &usba_ep[i]);
				else
					FUNC14(udc, &usba_ep[i]);
			}
	}

	if (status & USBA_END_OF_RESET) {
		struct usba_ep *ep0;

		FUNC18(udc, INT_CLR, USBA_END_OF_RESET);
		FUNC5(udc);

		if (udc->gadget.speed != USB_SPEED_UNKNOWN
				&& udc->driver->disconnect) {
			udc->gadget.speed = USB_SPEED_UNKNOWN;
			FUNC7(&udc->lock);
			udc->driver->disconnect(&udc->gadget);
			FUNC6(&udc->lock);
		}

		if (status & USBA_HIGH_SPEED) {
			FUNC0(DBG_BUS, "High-speed bus reset detected\n");
			udc->gadget.speed = USB_SPEED_HIGH;
		} else {
			FUNC0(DBG_BUS, "Full-speed bus reset detected\n");
			udc->gadget.speed = USB_SPEED_FULL;
		}

		ep0 = &usba_ep[0];
		ep0->desc = &usba_ep0_desc;
		ep0->state = WAIT_FOR_SETUP;
		FUNC16(ep0, CFG,
				(FUNC1(EPT_SIZE, EP0_EPT_SIZE)
				| FUNC1(EPT_TYPE, USBA_EPT_TYPE_CONTROL)
				| FUNC1(BK_NUMBER, USBA_BK_NUMBER_ONE)));
		FUNC16(ep0, CTL_ENB,
				USBA_EPT_ENABLE | USBA_RX_SETUP);
		FUNC18(udc, INT_ENB,
				(FUNC17(udc, INT_ENB)
				| FUNC1(EPT_INT, 1)
				| USBA_DET_SUSPEND
				| USBA_END_OF_RESUME));

		/*
		 * Unclear why we hit this irregularly, e.g. in usbtest,
		 * but it's clearly harmless...
		 */
		if (!(FUNC15(ep0, CFG) & USBA_EPT_MAPPED))
			FUNC3(&udc->pdev->dev,
				 "ODD: EP0 configuration is invalid!\n");
	}

	FUNC7(&udc->lock);

	return IRQ_HANDLED;
}
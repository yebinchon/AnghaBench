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
struct TYPE_7__ {scalar_t__ speed; } ;
struct udc {TYPE_6__* ep; TYPE_4__* regs; TYPE_2__* csr; TYPE_1__ gadget; } ;
struct TYPE_12__ {int in; int td_stp_dma; int td_phys; scalar_t__ naking; TYPE_5__* regs; TYPE_3__* td; } ;
struct TYPE_11__ {int /*<<< orphan*/  ctl; int /*<<< orphan*/  desptr; int /*<<< orphan*/  subptr; int /*<<< orphan*/  bufout_maxpkt; int /*<<< orphan*/  bufin_framenum; } ;
struct TYPE_10__ {int /*<<< orphan*/  ctl; } ;
struct TYPE_9__ {int status; } ;
struct TYPE_8__ {int /*<<< orphan*/ * ne; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct udc*,char*) ; 
 int /*<<< orphan*/  UDC_CSR_NE_MAX_PKT ; 
 int /*<<< orphan*/  UDC_DEVCTL_BF ; 
 int /*<<< orphan*/  UDC_DEVCTL_DU ; 
 int /*<<< orphan*/  UDC_DEVCTL_MODE ; 
 int /*<<< orphan*/  UDC_DEVCTL_RDE ; 
 int /*<<< orphan*/  UDC_DEVCTL_TDE ; 
 int /*<<< orphan*/  UDC_DMA_OUT_STS_L ; 
 size_t UDC_EP0IN_IX ; 
 int /*<<< orphan*/  UDC_EP0IN_MAX_PKT_SIZE ; 
 size_t UDC_EP0OUT_IX ; 
 int /*<<< orphan*/  UDC_EP0OUT_MAX_PKT_SIZE ; 
 int /*<<< orphan*/  UDC_EPCTL_CNAK ; 
 int /*<<< orphan*/  UDC_EPCTL_F ; 
 int /*<<< orphan*/  UDC_EPIN0_BUFF_SIZE ; 
 int /*<<< orphan*/  UDC_EPIN_BUFF_SIZE ; 
 int /*<<< orphan*/  UDC_EP_MAX_PKT_SIZE ; 
 int /*<<< orphan*/  UDC_FS_EP0IN_MAX_PKT_SIZE ; 
 int /*<<< orphan*/  UDC_FS_EP0OUT_MAX_PKT_SIZE ; 
 int /*<<< orphan*/  UDC_FS_EPIN0_BUFF_SIZE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,size_t) ; 
 scalar_t__ USB_SPEED_FULL ; 
 scalar_t__ USB_SPEED_HIGH ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ set_rde ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  udc_pollstall_timer ; 
 int /*<<< orphan*/  udc_timer ; 
 scalar_t__ use_dma ; 
 scalar_t__ use_dma_bufferfill_mode ; 
 scalar_t__ use_dma_ppb_du ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct udc *dev)
{
	u32 tmp;

	FUNC2(dev, "activate_control_endpoints\n");

	/* flush fifo */
	tmp = FUNC5(&dev->ep[UDC_EP0IN_IX].regs->ctl);
	tmp |= FUNC1(UDC_EPCTL_F);
	FUNC7(tmp, &dev->ep[UDC_EP0IN_IX].regs->ctl);

	/* set ep0 directions */
	dev->ep[UDC_EP0IN_IX].in = 1;
	dev->ep[UDC_EP0OUT_IX].in = 0;

	/* set buffer size (tx fifo entries) of EP0_IN */
	tmp = FUNC5(&dev->ep[UDC_EP0IN_IX].regs->bufin_framenum);
	if (dev->gadget.speed == USB_SPEED_FULL)
		tmp = FUNC0(tmp, UDC_FS_EPIN0_BUFF_SIZE,
					UDC_EPIN_BUFF_SIZE);
	else if (dev->gadget.speed == USB_SPEED_HIGH)
		tmp = FUNC0(tmp, UDC_EPIN0_BUFF_SIZE,
					UDC_EPIN_BUFF_SIZE);
	FUNC7(tmp, &dev->ep[UDC_EP0IN_IX].regs->bufin_framenum);

	/* set max packet size of EP0_IN */
	tmp = FUNC5(&dev->ep[UDC_EP0IN_IX].regs->bufout_maxpkt);
	if (dev->gadget.speed == USB_SPEED_FULL)
		tmp = FUNC0(tmp, UDC_FS_EP0IN_MAX_PKT_SIZE,
					UDC_EP_MAX_PKT_SIZE);
	else if (dev->gadget.speed == USB_SPEED_HIGH)
		tmp = FUNC0(tmp, UDC_EP0IN_MAX_PKT_SIZE,
				UDC_EP_MAX_PKT_SIZE);
	FUNC7(tmp, &dev->ep[UDC_EP0IN_IX].regs->bufout_maxpkt);

	/* set max packet size of EP0_OUT */
	tmp = FUNC5(&dev->ep[UDC_EP0OUT_IX].regs->bufout_maxpkt);
	if (dev->gadget.speed == USB_SPEED_FULL)
		tmp = FUNC0(tmp, UDC_FS_EP0OUT_MAX_PKT_SIZE,
					UDC_EP_MAX_PKT_SIZE);
	else if (dev->gadget.speed == USB_SPEED_HIGH)
		tmp = FUNC0(tmp, UDC_EP0OUT_MAX_PKT_SIZE,
					UDC_EP_MAX_PKT_SIZE);
	FUNC7(tmp, &dev->ep[UDC_EP0OUT_IX].regs->bufout_maxpkt);

	/* set max packet size of EP0 in UDC CSR */
	tmp = FUNC5(&dev->csr->ne[0]);
	if (dev->gadget.speed == USB_SPEED_FULL)
		tmp = FUNC0(tmp, UDC_FS_EP0OUT_MAX_PKT_SIZE,
					UDC_CSR_NE_MAX_PKT);
	else if (dev->gadget.speed == USB_SPEED_HIGH)
		tmp = FUNC0(tmp, UDC_EP0OUT_MAX_PKT_SIZE,
					UDC_CSR_NE_MAX_PKT);
	FUNC7(tmp, &dev->csr->ne[0]);

	if (use_dma) {
		dev->ep[UDC_EP0OUT_IX].td->status |=
			FUNC1(UDC_DMA_OUT_STS_L);
		/* write dma desc address */
		FUNC7(dev->ep[UDC_EP0OUT_IX].td_stp_dma,
			&dev->ep[UDC_EP0OUT_IX].regs->subptr);
		FUNC7(dev->ep[UDC_EP0OUT_IX].td_phys,
			&dev->ep[UDC_EP0OUT_IX].regs->desptr);
		/* stop RDE timer */
		if (FUNC6(&udc_timer)) {
			set_rde = 0;
			FUNC4(&udc_timer, jiffies - 1);
		}
		/* stop pollstall timer */
		if (FUNC6(&udc_pollstall_timer)) {
			FUNC4(&udc_pollstall_timer, jiffies - 1);
		}
		/* enable DMA */
		tmp = FUNC5(&dev->regs->ctl);
		tmp |= FUNC1(UDC_DEVCTL_MODE)
				| FUNC1(UDC_DEVCTL_RDE)
				| FUNC1(UDC_DEVCTL_TDE);
		if (use_dma_bufferfill_mode) {
			tmp |= FUNC1(UDC_DEVCTL_BF);
		} else if (use_dma_ppb_du) {
			tmp |= FUNC1(UDC_DEVCTL_DU);
		}
		FUNC7(tmp, &dev->regs->ctl);
	}

	/* clear NAK by writing CNAK for EP0IN */
	tmp = FUNC5(&dev->ep[UDC_EP0IN_IX].regs->ctl);
	tmp |= FUNC1(UDC_EPCTL_CNAK);
	FUNC7(tmp, &dev->ep[UDC_EP0IN_IX].regs->ctl);
	dev->ep[UDC_EP0IN_IX].naking = 0;
	FUNC3(&dev->ep[UDC_EP0IN_IX], UDC_EP0IN_IX);

	/* clear NAK by writing CNAK for EP0OUT */
	tmp = FUNC5(&dev->ep[UDC_EP0OUT_IX].regs->ctl);
	tmp |= FUNC1(UDC_EPCTL_CNAK);
	FUNC7(tmp, &dev->ep[UDC_EP0OUT_IX].regs->ctl);
	dev->ep[UDC_EP0OUT_IX].naking = 0;
	FUNC3(&dev->ep[UDC_EP0OUT_IX], UDC_EP0OUT_IX);
}
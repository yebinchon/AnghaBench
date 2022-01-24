#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_4__ {unsigned int length; unsigned int actual; unsigned int dma; } ;
struct omap_req {unsigned int dma_bytes; TYPE_2__ req; } ;
struct TYPE_3__ {unsigned int maxpacket; } ;
struct omap_ep {unsigned int maxpacket; int bEndpointAddress; int /*<<< orphan*/  lch; int /*<<< orphan*/  dma_channel; int /*<<< orphan*/  dma_counter; TYPE_1__ ep; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OMAP_DMA_AMODE_POST_INC ; 
 int /*<<< orphan*/  OMAP_DMA_DATA_TYPE_S16 ; 
 int /*<<< orphan*/  OMAP_DMA_DATA_TYPE_S8 ; 
 int /*<<< orphan*/  OMAP_DMA_PORT_EMIFF ; 
 int /*<<< orphan*/  OMAP_DMA_SYNC_ELEMENT ; 
 int /*<<< orphan*/  UDC_CTRL ; 
 int /*<<< orphan*/  UDC_DMA_IRQ_EN ; 
 int /*<<< orphan*/  UDC_EP_NUM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int UDC_RXN_STOP ; 
 scalar_t__ UDC_RXN_TC ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int UDC_SET_FIFO_EN ; 
 int /*<<< orphan*/  USB_W2FC_RX0 ; 
 scalar_t__ FUNC3 () ; 
 unsigned int FUNC4 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct omap_ep *ep, struct omap_req *req)
{
	unsigned packets = req->req.length - req->req.actual;
	int dma_trigger = 0;
	u16 w;

	if (FUNC3())
		dma_trigger = FUNC0(USB_W2FC_RX0, ep->dma_channel);

	/* NOTE:  we filtered out "short reads" before, so we know
	 * the buffer has only whole numbers of packets.
	 * except MODE SELECT(6) sent the 24 bytes data in OMAP24XX DMA mode
	 */
	if (FUNC3() && packets < ep->maxpacket) {
		FUNC8(ep->lch, OMAP_DMA_DATA_TYPE_S8,
				packets, 1, OMAP_DMA_SYNC_ELEMENT,
				dma_trigger, 0);
		req->dma_bytes = packets;
	} else {
		/* set up this DMA transfer, enable the fifo, start */
		packets /= ep->ep.maxpacket;
		packets = FUNC4(packets, (unsigned)UDC_RXN_TC + 1);
		req->dma_bytes = packets * ep->ep.maxpacket;
		FUNC8(ep->lch, OMAP_DMA_DATA_TYPE_S16,
				ep->ep.maxpacket >> 1, packets,
				OMAP_DMA_SYNC_ELEMENT,
				dma_trigger, 0);
	}
	FUNC7(ep->lch, OMAP_DMA_PORT_EMIFF,
		OMAP_DMA_AMODE_POST_INC, req->req.dma + req->req.actual,
		0, 0);
	ep->dma_counter = FUNC5(ep->lch);

	FUNC10(UDC_RXN_STOP | (packets - 1), FUNC1(ep->dma_channel));
	w = FUNC6(UDC_DMA_IRQ_EN);
	w |= FUNC2(ep->dma_channel);
	FUNC10(w, UDC_DMA_IRQ_EN);
	FUNC10(ep->bEndpointAddress & 0xf, UDC_EP_NUM);
	FUNC10(UDC_SET_FIFO_EN, UDC_CTRL);

	FUNC9(ep->lch);
}
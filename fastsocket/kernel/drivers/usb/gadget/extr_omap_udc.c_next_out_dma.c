
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {unsigned int length; unsigned int actual; unsigned int dma; } ;
struct omap_req {unsigned int dma_bytes; TYPE_2__ req; } ;
struct TYPE_3__ {unsigned int maxpacket; } ;
struct omap_ep {unsigned int maxpacket; int bEndpointAddress; int lch; int dma_channel; int dma_counter; TYPE_1__ ep; } ;


 int OMAP24XX_DMA (int ,int ) ;
 int OMAP_DMA_AMODE_POST_INC ;
 int OMAP_DMA_DATA_TYPE_S16 ;
 int OMAP_DMA_DATA_TYPE_S8 ;
 int OMAP_DMA_PORT_EMIFF ;
 int OMAP_DMA_SYNC_ELEMENT ;
 int UDC_CTRL ;
 int UDC_DMA_IRQ_EN ;
 int UDC_EP_NUM ;
 int UDC_RXDMA (int ) ;
 unsigned int UDC_RXN_STOP ;
 scalar_t__ UDC_RXN_TC ;
 int UDC_RX_EOT_IE (int ) ;
 int UDC_SET_FIFO_EN ;
 int USB_W2FC_RX0 ;
 scalar_t__ cpu_is_omap24xx () ;
 unsigned int min (unsigned int,unsigned int) ;
 int omap_get_dma_dst_pos (int ) ;
 int omap_readw (int ) ;
 int omap_set_dma_dest_params (int ,int ,int ,unsigned int,int ,int ) ;
 int omap_set_dma_transfer_params (int ,int ,int,unsigned int,int ,int,int ) ;
 int omap_start_dma (int ) ;
 int omap_writew (int,int ) ;

__attribute__((used)) static void next_out_dma(struct omap_ep *ep, struct omap_req *req)
{
 unsigned packets = req->req.length - req->req.actual;
 int dma_trigger = 0;
 u16 w;

 if (cpu_is_omap24xx())
  dma_trigger = OMAP24XX_DMA(USB_W2FC_RX0, ep->dma_channel);





 if (cpu_is_omap24xx() && packets < ep->maxpacket) {
  omap_set_dma_transfer_params(ep->lch, OMAP_DMA_DATA_TYPE_S8,
    packets, 1, OMAP_DMA_SYNC_ELEMENT,
    dma_trigger, 0);
  req->dma_bytes = packets;
 } else {

  packets /= ep->ep.maxpacket;
  packets = min(packets, (unsigned)UDC_RXN_TC + 1);
  req->dma_bytes = packets * ep->ep.maxpacket;
  omap_set_dma_transfer_params(ep->lch, OMAP_DMA_DATA_TYPE_S16,
    ep->ep.maxpacket >> 1, packets,
    OMAP_DMA_SYNC_ELEMENT,
    dma_trigger, 0);
 }
 omap_set_dma_dest_params(ep->lch, OMAP_DMA_PORT_EMIFF,
  OMAP_DMA_AMODE_POST_INC, req->req.dma + req->req.actual,
  0, 0);
 ep->dma_counter = omap_get_dma_dst_pos(ep->lch);

 omap_writew(UDC_RXN_STOP | (packets - 1), UDC_RXDMA(ep->dma_channel));
 w = omap_readw(UDC_DMA_IRQ_EN);
 w |= UDC_RX_EOT_IE(ep->dma_channel);
 omap_writew(w, UDC_DMA_IRQ_EN);
 omap_writew(ep->bEndpointAddress & 0xf, UDC_EP_NUM);
 omap_writew(UDC_SET_FIFO_EN, UDC_CTRL);

 omap_start_dma(ep->lch);
}

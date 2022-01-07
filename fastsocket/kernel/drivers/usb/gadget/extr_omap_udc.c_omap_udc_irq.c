
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct omap_udc {int lock; } ;
typedef int irqreturn_t ;


 int DBG (char*,int) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int UDC_DS_CHG ;
 int UDC_EP0_RX ;
 int UDC_EP0_TX ;
 int UDC_EPN_RX ;
 int UDC_EPN_TX ;
 int UDC_IRQ_SOF ;
 int UDC_IRQ_SRC ;
 int UDC_RXN_CNT ;
 int UDC_RXN_EOT ;
 int UDC_SETUP ;
 int UDC_TXN_DONE ;
 int devstate_irq (void*,int) ;
 int dma_irq (void*,int) ;
 int ep0_irq (void*,int) ;
 int omap_readw (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ use_dma ;

__attribute__((used)) static irqreturn_t omap_udc_irq(int irq, void *_udc)
{
 struct omap_udc *udc = _udc;
 u16 irq_src;
 irqreturn_t status = IRQ_NONE;
 unsigned long flags;

 spin_lock_irqsave(&udc->lock, flags);
 irq_src = omap_readw(UDC_IRQ_SRC);


 if (irq_src & UDC_DS_CHG) {
  devstate_irq(_udc, irq_src);
  status = IRQ_HANDLED;
  irq_src &= ~UDC_DS_CHG;
 }


 if (irq_src & (UDC_EP0_RX|UDC_SETUP|UDC_EP0_TX)) {
  ep0_irq(_udc, irq_src);
  status = IRQ_HANDLED;
  irq_src &= ~(UDC_EP0_RX|UDC_SETUP|UDC_EP0_TX);
 }


 if (use_dma && (irq_src & (UDC_TXN_DONE|UDC_RXN_CNT|UDC_RXN_EOT))) {
  dma_irq(_udc, irq_src);
  status = IRQ_HANDLED;
  irq_src &= ~(UDC_TXN_DONE|UDC_RXN_CNT|UDC_RXN_EOT);
 }

 irq_src &= ~(UDC_IRQ_SOF | UDC_EPN_TX|UDC_EPN_RX);
 if (irq_src)
  DBG("udc_irq, unhandled %03x\n", irq_src);
 spin_unlock_irqrestore(&udc->lock, flags);

 return status;
}

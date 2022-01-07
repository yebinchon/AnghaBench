
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int irqs_reset; } ;
struct TYPE_3__ {int speed; } ;
struct pxa_udc {TYPE_2__ stats; TYPE_1__ gadget; int driver; int dev; struct pxa_ep* pxa_ep; } ;
struct pxa_ep {int dummy; } ;


 int EPROTO ;
 int UDCCR ;
 int UDCCR_UDA ;
 int UDCCSR0_FTF ;
 int UDCCSR0_OPC ;
 int UDCISR1 ;
 int UDCISR1_IRRS ;
 int USB_SPEED_FULL ;
 int dev_dbg (int ,char*) ;
 int dev_info (int ,char*) ;
 int ep0_idle (struct pxa_udc*) ;
 int ep_write_UDCCSR (struct pxa_ep*,int) ;
 int memset (TYPE_2__*,int ,int) ;
 int nuke (struct pxa_ep*,int ) ;
 int stop_activity (struct pxa_udc*,int ) ;
 int udc_readl (struct pxa_udc*,int ) ;
 int udc_writel (struct pxa_udc*,int ,int ) ;

__attribute__((used)) static void irq_udc_reset(struct pxa_udc *udc)
{
 u32 udccr = udc_readl(udc, UDCCR);
 struct pxa_ep *ep = &udc->pxa_ep[0];

 dev_info(udc->dev, "USB reset\n");
 udc_writel(udc, UDCISR1, UDCISR1_IRRS);
 udc->stats.irqs_reset++;

 if ((udccr & UDCCR_UDA) == 0) {
  dev_dbg(udc->dev, "USB reset start\n");
  stop_activity(udc, udc->driver);
 }
 udc->gadget.speed = USB_SPEED_FULL;
 memset(&udc->stats, 0, sizeof udc->stats);

 nuke(ep, -EPROTO);
 ep_write_UDCCSR(ep, UDCCSR0_FTF | UDCCSR0_OPC);
 ep0_idle(udc);
}

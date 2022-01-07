
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usba_udc {int lock; } ;
struct TYPE_2__ {int name; } ;
struct usba_ep {scalar_t__ is_in; int queue; TYPE_1__ ep; scalar_t__ is_isoc; int desc; struct usba_udc* udc; } ;
struct usb_ep {int dummy; } ;


 int BUSY_BANKS ;
 int CLR_STA ;
 int DBG (int ,char*,int ,...) ;
 int DBG_ERR ;
 int DBG_GADGET ;
 int EAGAIN ;
 int ENODEV ;
 int ENOTTY ;
 int SET_STA ;
 int STA ;
 int USBA_BF (int ,long) ;
 int USBA_FORCE_STALL ;
 int USBA_TOGGLE_CLR ;
 int list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct usba_ep* to_usba_ep (struct usb_ep*) ;
 int usba_ep_readl (struct usba_ep*,int ) ;
 int usba_ep_writel (struct usba_ep*,int ,int) ;

__attribute__((used)) static int usba_ep_set_halt(struct usb_ep *_ep, int value)
{
 struct usba_ep *ep = to_usba_ep(_ep);
 struct usba_udc *udc = ep->udc;
 unsigned long flags;
 int ret = 0;

 DBG(DBG_GADGET, "endpoint %s: %s HALT\n", ep->ep.name,
   value ? "set" : "clear");

 if (!ep->desc) {
  DBG(DBG_ERR, "Attempted to halt uninitialized ep %s\n",
    ep->ep.name);
  return -ENODEV;
 }
 if (ep->is_isoc) {
  DBG(DBG_ERR, "Attempted to halt isochronous ep %s\n",
    ep->ep.name);
  return -ENOTTY;
 }

 spin_lock_irqsave(&udc->lock, flags);





 if (!list_empty(&ep->queue)
   || ((value && ep->is_in && (usba_ep_readl(ep, STA)
     & USBA_BF(BUSY_BANKS, -1L))))) {
  ret = -EAGAIN;
 } else {
  if (value)
   usba_ep_writel(ep, SET_STA, USBA_FORCE_STALL);
  else
   usba_ep_writel(ep, CLR_STA,
     USBA_FORCE_STALL | USBA_TOGGLE_CLR);
  usba_ep_readl(ep, STA);
 }

 spin_unlock_irqrestore(&udc->lock, flags);

 return ret;
}

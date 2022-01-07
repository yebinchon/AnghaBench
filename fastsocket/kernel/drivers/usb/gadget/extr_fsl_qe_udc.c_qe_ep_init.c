
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct usb_endpoint_descriptor {int bmAttributes; int bEndpointAddress; int wMaxPacketSize; } ;
struct TYPE_3__ {int speed; } ;
struct qe_udc {int ep0_dir; int dev; int lock; int ep0_state; TYPE_1__ gadget; struct qe_ep* eps; } ;
struct TYPE_4__ {int maxpacket; int name; } ;
struct qe_ep {scalar_t__ tm; int init; int dir; TYPE_2__ ep; int rxframe; int rxbuffer; int * txframe; scalar_t__ stopped; struct usb_endpoint_descriptor const* desc; } ;


 int ENODEV ;
 int GFP_ATOMIC ;
 scalar_t__ USBP_TM_CTL ;
 int USB_DIR_BOTH ;


 int USB_ENDPOINT_DIR_MASK ;
 int USB_ENDPOINT_XFERTYPE_MASK ;







 int WAIT_FOR_SETUP ;
 int dev_err (int ,char*,...) ;
 int kfree (int ) ;
 int * kmalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int qe_ep_bd_init (struct qe_udc*,unsigned char) ;
 int qe_ep_register_init (struct qe_udc*,unsigned char) ;
 int qe_ep_rxbd_update (struct qe_ep*) ;
 int qe_frame_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int strstr (int ,char*) ;

__attribute__((used)) static int qe_ep_init(struct qe_udc *udc,
        unsigned char pipe_num,
        const struct usb_endpoint_descriptor *desc)
{
 struct qe_ep *ep = &udc->eps[pipe_num];
 unsigned long flags;
 int reval = 0;
 u16 max = 0;

 max = le16_to_cpu(desc->wMaxPacketSize);




 if (pipe_num != 0) {
  switch (desc->bmAttributes & USB_ENDPOINT_XFERTYPE_MASK) {
  case 134:
   if (strstr(ep->ep.name, "-iso")
     || strstr(ep->ep.name, "-int"))
    goto en_done;
   switch (udc->gadget.speed) {
   case 129:
   if ((max == 128) || (max == 256) || (max == 512))
    break;
   default:
    switch (max) {
    case 4:
    case 8:
    case 16:
    case 32:
    case 64:
     break;
    default:
    case 128:
     goto en_done;
    }
   }
   break;
  case 132:
   if (strstr(ep->ep.name, "-iso"))
    goto en_done;
   switch (udc->gadget.speed) {
   case 129:
    if (max <= 1024)
     break;
   case 130:
    if (max <= 64)
     break;
   default:
    if (max <= 8)
     break;
    goto en_done;
   }
   break;
  case 131:
   if (strstr(ep->ep.name, "-bulk")
    || strstr(ep->ep.name, "-int"))
    goto en_done;
   switch (udc->gadget.speed) {
   case 129:
    if (max <= 1024)
     break;
   case 130:
    if (max <= 1023)
     break;
   default:
    goto en_done;
   }
   break;
  case 133:
   if (strstr(ep->ep.name, "-iso")
    || strstr(ep->ep.name, "-int"))
    goto en_done;
   switch (udc->gadget.speed) {
   case 129:
   case 130:
    switch (max) {
    case 1:
    case 2:
    case 4:
    case 8:
    case 16:
    case 32:
    case 64:
     break;
    default:
     goto en_done;
    }
   case 128:
    switch (max) {
    case 1:
    case 2:
    case 4:
    case 8:
     break;
    default:
     goto en_done;
    }
   default:
    goto en_done;
   }
   break;

  default:
   goto en_done;
  }
 }

 spin_lock_irqsave(&udc->lock, flags);


 ep->ep.maxpacket = max;
 ep->tm = (u8)(desc->bmAttributes & USB_ENDPOINT_XFERTYPE_MASK);
 ep->desc = desc;
 ep->stopped = 0;
 ep->init = 1;

 if (pipe_num == 0) {
  ep->dir = USB_DIR_BOTH;
  udc->ep0_dir = 135;
  udc->ep0_state = WAIT_FOR_SETUP;
 } else {
  switch (desc->bEndpointAddress & USB_ENDPOINT_DIR_MASK) {
  case 135:
   ep->dir = 135;
   break;
  case 136:
   ep->dir = 136;
  default:
   break;
  }
 }


 qe_ep_bd_init(udc, pipe_num);
 if ((ep->tm == USBP_TM_CTL) || (ep->dir == 135)) {
  reval = qe_ep_rxbd_update(ep);
  if (reval)
   goto en_done1;
 }

 if ((ep->tm == USBP_TM_CTL) || (ep->dir == 136)) {
  ep->txframe = kmalloc(sizeof(*ep->txframe), GFP_ATOMIC);
  if (ep->txframe == ((void*)0)) {
   dev_err(udc->dev, "malloc txframe failed\n");
   goto en_done2;
  }
  qe_frame_init(ep->txframe);
 }

 qe_ep_register_init(udc, pipe_num);



 spin_unlock_irqrestore(&udc->lock, flags);

 return 0;
en_done2:
 kfree(ep->rxbuffer);
 kfree(ep->rxframe);
en_done1:
 spin_unlock_irqrestore(&udc->lock, flags);
en_done:
 dev_err(udc->dev, "failed to initialize %s\n", ep->ep.name);
 return -ENODEV;
}

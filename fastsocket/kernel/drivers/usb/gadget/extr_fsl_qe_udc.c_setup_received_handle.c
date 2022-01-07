
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct usb_ctrlrequest {int bRequestType; int bRequest; int wLength; int wIndex; int wValue; } ;
struct qe_udc {int ep0_dir; int ep0_state; int lock; int local_setup_buff; int gadget; TYPE_1__* driver; struct qe_ep* eps; } ;
struct qe_ep {int ep; } ;
struct TYPE_2__ {scalar_t__ (* setup ) (int *,int *) ;} ;


 int DATA_STATE_NEED_ZLP ;
 int DATA_STATE_RECV ;
 int DATA_STATE_XMIT ;
 int USB_DIR_IN ;
 int USB_DIR_OUT ;
 scalar_t__ USB_ENDPOINT_NUMBER_MASK ;
 int USB_MAX_ENDPOINTS ;
 int USB_RECIP_DEVICE ;
 int USB_RECIP_ENDPOINT ;
 int USB_RECIP_MASK ;




 int USB_TYPE_MASK ;
 int USB_TYPE_STANDARD ;
 int ch9getstatus (struct qe_udc*,int,scalar_t__,scalar_t__,scalar_t__) ;
 int ch9setaddress (struct qe_udc*,scalar_t__,scalar_t__,scalar_t__) ;
 int ep0_prime_status (struct qe_udc*,int) ;
 scalar_t__ le16_to_cpu (int ) ;
 int qe_ep0_stall (struct qe_udc*) ;
 int qe_ep_set_halt (int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ stub1 (int *,int *) ;
 scalar_t__ stub2 (int *,int *) ;
 int udc_reset_ep_queue (struct qe_udc*,int ) ;

__attribute__((used)) static void setup_received_handle(struct qe_udc *udc,
    struct usb_ctrlrequest *setup)
{

 u16 wValue = le16_to_cpu(setup->wValue);
 u16 wIndex = le16_to_cpu(setup->wIndex);
 u16 wLength = le16_to_cpu(setup->wLength);


 udc_reset_ep_queue(udc, 0);

 if (setup->bRequestType & USB_DIR_IN)
  udc->ep0_dir = USB_DIR_IN;
 else
  udc->ep0_dir = USB_DIR_OUT;

 switch (setup->bRequest) {
 case 130:

  if ((setup->bRequestType & (USB_DIR_IN | USB_TYPE_MASK))
     != (USB_DIR_IN | USB_TYPE_STANDARD))
   break;
  ch9getstatus(udc, setup->bRequestType, wValue, wIndex,
     wLength);
  return;

 case 129:

  if (setup->bRequestType != (USB_DIR_OUT | USB_TYPE_STANDARD |
      USB_RECIP_DEVICE))
   break;
  ch9setaddress(udc, wValue, wIndex, wLength);
  return;

 case 131:
 case 128:

  if ((setup->bRequestType & USB_TYPE_MASK)
     != USB_TYPE_STANDARD)
   break;

  if ((setup->bRequestType & USB_RECIP_MASK)
    == USB_RECIP_ENDPOINT) {
   int pipe = wIndex & USB_ENDPOINT_NUMBER_MASK;
   struct qe_ep *ep;

   if (wValue != 0 || wLength != 0
    || pipe > USB_MAX_ENDPOINTS)
    break;
   ep = &udc->eps[pipe];

   spin_unlock(&udc->lock);
   qe_ep_set_halt(&ep->ep,
     (setup->bRequest == 128)
      ? 1 : 0);
   spin_lock(&udc->lock);
  }

  ep0_prime_status(udc, USB_DIR_IN);

  return;

 default:
  break;
 }

 if (wLength) {

  if (setup->bRequestType & USB_DIR_IN) {
   udc->ep0_state = DATA_STATE_XMIT;
   udc->ep0_dir = USB_DIR_IN;
  } else {
   udc->ep0_state = DATA_STATE_RECV;
   udc->ep0_dir = USB_DIR_OUT;
  }
  spin_unlock(&udc->lock);
  if (udc->driver->setup(&udc->gadget,
     &udc->local_setup_buff) < 0)
   qe_ep0_stall(udc);
  spin_lock(&udc->lock);
 } else {

  udc->ep0_dir = USB_DIR_IN;
  spin_unlock(&udc->lock);
  if (udc->driver->setup(&udc->gadget,
     &udc->local_setup_buff) < 0)
   qe_ep0_stall(udc);
  spin_lock(&udc->lock);
  udc->ep0_state = DATA_STATE_NEED_ZLP;
 }
}

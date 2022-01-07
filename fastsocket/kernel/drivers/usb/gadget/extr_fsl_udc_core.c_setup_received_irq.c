
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct usb_ctrlrequest {int bRequest; int bRequestType; int wLength; int wIndex; int wValue; } ;
struct TYPE_6__ {int b_hnp_enable; int a_hnp_support; int a_alt_hnp_support; } ;
struct fsl_udc {int max_ep; int ep0_dir; int ep0_state; int lock; int local_setup_buff; TYPE_2__ gadget; TYPE_1__* driver; } ;
struct fsl_ep {int ep; } ;
struct TYPE_5__ {scalar_t__ (* setup ) (TYPE_2__*,int *) ;} ;


 int DATA_STATE_RECV ;
 int DATA_STATE_XMIT ;
 int EOPNOTSUPP ;
 int EP_DIR_IN ;
 int const USB_DEVICE_A_ALT_HNP_SUPPORT ;
 int const USB_DEVICE_A_HNP_SUPPORT ;
 int const USB_DEVICE_B_HNP_ENABLE ;
 int USB_DIR_IN ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_RECIP_ENDPOINT ;
 int USB_RECIP_MASK ;




 int USB_TYPE_MASK ;
 int USB_TYPE_STANDARD ;
 int WAIT_FOR_OUT_STATUS ;
 int ch9getstatus (struct fsl_udc*,int,scalar_t__,scalar_t__,scalar_t__) ;
 int ch9setaddress (struct fsl_udc*,scalar_t__,scalar_t__,scalar_t__) ;
 int ep0_prime_status (struct fsl_udc*,int ) ;
 int ep0stall (struct fsl_udc*) ;
 int fsl_ep_set_halt (int *,int) ;
 int gadget_is_otg (TYPE_2__*) ;
 struct fsl_ep* get_ep_by_pipe (struct fsl_udc*,int) ;
 int get_pipe_by_windex (scalar_t__) ;
 scalar_t__ le16_to_cpu (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ stub1 (TYPE_2__*,int *) ;
 scalar_t__ stub2 (TYPE_2__*,int *) ;
 int udc_reset_ep_queue (struct fsl_udc*,int ) ;

__attribute__((used)) static void setup_received_irq(struct fsl_udc *udc,
  struct usb_ctrlrequest *setup)
{
 u16 wValue = le16_to_cpu(setup->wValue);
 u16 wIndex = le16_to_cpu(setup->wIndex);
 u16 wLength = le16_to_cpu(setup->wLength);

 udc_reset_ep_queue(udc, 0);


 switch (setup->bRequest) {
 case 130:

  if ((setup->bRequestType & (USB_DIR_IN | USB_TYPE_MASK))
     != (USB_DIR_IN | USB_TYPE_STANDARD))
   break;
  ch9getstatus(udc, setup->bRequestType, wValue, wIndex, wLength);
  return;

 case 129:

  if (setup->bRequestType != (USB_DIR_OUT | USB_TYPE_STANDARD
      | USB_RECIP_DEVICE))
   break;
  ch9setaddress(udc, wValue, wIndex, wLength);
  return;

 case 131:
 case 128:

 {
  int rc = -EOPNOTSUPP;

  if ((setup->bRequestType & (USB_RECIP_MASK | USB_TYPE_MASK))
    == (USB_RECIP_ENDPOINT | USB_TYPE_STANDARD)) {
   int pipe = get_pipe_by_windex(wIndex);
   struct fsl_ep *ep;

   if (wValue != 0 || wLength != 0 || pipe > udc->max_ep)
    break;
   ep = get_ep_by_pipe(udc, pipe);

   spin_unlock(&udc->lock);
   rc = fsl_ep_set_halt(&ep->ep,
     (setup->bRequest == 128)
      ? 1 : 0);
   spin_lock(&udc->lock);

  } else if ((setup->bRequestType & (USB_RECIP_MASK
    | USB_TYPE_MASK)) == (USB_RECIP_DEVICE
    | USB_TYPE_STANDARD)) {


   if (!gadget_is_otg(&udc->gadget))
    break;
   else if (setup->bRequest == USB_DEVICE_B_HNP_ENABLE)
    udc->gadget.b_hnp_enable = 1;
   else if (setup->bRequest == USB_DEVICE_A_HNP_SUPPORT)
    udc->gadget.a_hnp_support = 1;
   else if (setup->bRequest ==
     USB_DEVICE_A_ALT_HNP_SUPPORT)
    udc->gadget.a_alt_hnp_support = 1;
   else
    break;
   rc = 0;
  } else
   break;

  if (rc == 0) {
   if (ep0_prime_status(udc, EP_DIR_IN))
    ep0stall(udc);
  }
  return;
 }

 default:
  break;
 }


 if (wLength) {

  udc->ep0_dir = (setup->bRequestType & USB_DIR_IN)
    ? USB_DIR_IN : USB_DIR_OUT;
  spin_unlock(&udc->lock);
  if (udc->driver->setup(&udc->gadget,
    &udc->local_setup_buff) < 0)
   ep0stall(udc);
  spin_lock(&udc->lock);
  udc->ep0_state = (setup->bRequestType & USB_DIR_IN)
    ? DATA_STATE_XMIT : DATA_STATE_RECV;
 } else {

  udc->ep0_dir = USB_DIR_IN;
  spin_unlock(&udc->lock);
  if (udc->driver->setup(&udc->gadget,
    &udc->local_setup_buff) < 0)
   ep0stall(udc);
  spin_lock(&udc->lock);
  udc->ep0_state = WAIT_FOR_OUT_STATUS;
 }
}

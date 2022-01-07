
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct fsl_udc {scalar_t__ usb_state; int ep0_state; int device_address; } ;
struct fsl_req {int dummy; } ;
struct fsl_ep {int dummy; } ;
struct TYPE_2__ {int deviceaddr; } ;




 int EP_DIR_IN ;
 int EP_DIR_OUT ;
 int ERR (char*) ;
 int USB_DEVICE_ADDRESS_BIT_POS ;
 scalar_t__ USB_STATE_ADDRESS ;


 int done (struct fsl_ep*,struct fsl_req*,int ) ;
 TYPE_1__* dr_regs ;
 int ep0_prime_status (struct fsl_udc*,int ) ;
 int ep0stall (struct fsl_udc*) ;
 int fsl_writel (int,int *) ;

__attribute__((used)) static void ep0_req_complete(struct fsl_udc *udc, struct fsl_ep *ep0,
  struct fsl_req *req)
{
 if (udc->usb_state == USB_STATE_ADDRESS) {

  u32 new_address = (u32) udc->device_address;
  fsl_writel(new_address << USB_DEVICE_ADDRESS_BIT_POS,
    &dr_regs->deviceaddr);
 }

 done(ep0, req, 0);

 switch (udc->ep0_state) {
 case 130:

  if (ep0_prime_status(udc, EP_DIR_OUT))
   ep0stall(udc);
  break;
 case 131:

  if (ep0_prime_status(udc, EP_DIR_IN))
   ep0stall(udc);
  break;
 case 129:
  udc->ep0_state = 128;
  break;
 case 128:
  ERR("Unexpect ep0 packets\n");
  break;
 default:
  ep0stall(udc);
  break;
 }
}

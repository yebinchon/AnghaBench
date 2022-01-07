
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_udc {int dummy; } ;


 int USB_ENDPOINT_XFER_CONTROL ;
 int USB_MAX_CTRL_PAYLOAD ;
 int USB_RECV ;
 int USB_SEND ;
 int dr_ep_setup (int ,int ,int ) ;
 int struct_ep_qh_setup (struct fsl_udc*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void ep0_setup(struct fsl_udc *udc)
{


 struct_ep_qh_setup(udc, 0, USB_RECV, USB_ENDPOINT_XFER_CONTROL,
   USB_MAX_CTRL_PAYLOAD, 0, 0);
 struct_ep_qh_setup(udc, 0, USB_SEND, USB_ENDPOINT_XFER_CONTROL,
   USB_MAX_CTRL_PAYLOAD, 0, 0);
 dr_ep_setup(0, USB_RECV, USB_ENDPOINT_XFER_CONTROL);
 dr_ep_setup(0, USB_SEND, USB_ENDPOINT_XFER_CONTROL);

 return;

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_udc_struct {size_t ep0state; int dev; } ;
typedef enum ep0_state { ____Placeholder_ep0_state } ep0_state ;


 int D_EP0 (int ,char*,char const*,int ,int ) ;
 int * state_name ;

void ep0_chg_stat(const char *label,
   struct imx_udc_struct *imx_usb, enum ep0_state stat)
{
 D_EP0(imx_usb->dev, "<%s> from %15s to %15s\n",
  label, state_name[imx_usb->ep0state], state_name[stat]);

 if (imx_usb->ep0state == stat)
  return;

 imx_usb->ep0state = stat;
}

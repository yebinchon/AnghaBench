
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_udc_struct {int dummy; } ;


 int imx_udc_config (struct imx_udc_struct*) ;
 int imx_udc_init_ep (struct imx_udc_struct*) ;
 int imx_udc_init_fifo (struct imx_udc_struct*) ;
 int imx_udc_init_irq (struct imx_udc_struct*) ;
 int imx_udc_reset (struct imx_udc_struct*) ;

__attribute__((used)) static void imx_udc_init(struct imx_udc_struct *imx_usb)
{

 imx_udc_reset(imx_usb);


 imx_udc_config(imx_usb);


 imx_udc_init_irq(imx_usb);


 imx_udc_init_ep(imx_usb);


 imx_udc_init_fifo(imx_usb);
}

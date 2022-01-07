
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irq_handler_t ;


 int imx_udc_bulk_irq ;
 int imx_udc_ctrl_irq ;
 int imx_udc_irq ;

irq_handler_t intr_handler(int i)
{
 switch (i) {
 case 0:
  return imx_udc_ctrl_irq;
 case 1:
 case 2:
 case 3:
 case 4:
 case 5:
  return imx_udc_bulk_irq;
 default:
  return imx_udc_irq;
 }
}

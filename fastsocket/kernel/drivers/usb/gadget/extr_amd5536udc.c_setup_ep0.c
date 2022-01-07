
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udc {int dummy; } ;


 int activate_control_endpoints (struct udc*) ;
 int udc_enable_dev_setup_interrupts (struct udc*) ;
 int udc_enable_ep0_interrupts (struct udc*) ;

__attribute__((used)) static int setup_ep0(struct udc *dev)
{
 activate_control_endpoints(dev);

 udc_enable_ep0_interrupts(dev);

 udc_enable_dev_setup_interrupts(dev);

 return 0;
}

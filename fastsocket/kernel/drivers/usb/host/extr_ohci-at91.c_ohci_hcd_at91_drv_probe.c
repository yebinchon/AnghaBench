
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct at91_usbh_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct at91_usbh_data {scalar_t__* vbus_pin; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int device_init_wakeup (TYPE_1__*,int) ;
 int gpio_direction_output (scalar_t__,int ) ;
 int gpio_request (scalar_t__,char*) ;
 int ohci_at91_hc_driver ;
 int usb_hcd_at91_probe (int *,struct platform_device*) ;

__attribute__((used)) static int ohci_hcd_at91_drv_probe(struct platform_device *pdev)
{
 struct at91_usbh_data *pdata = pdev->dev.platform_data;
 int i;

 if (pdata) {





  for (i = 0; i < ARRAY_SIZE(pdata->vbus_pin); i++) {
   if (pdata->vbus_pin[i] <= 0)
    continue;
   gpio_request(pdata->vbus_pin[i], "ohci_vbus");
   gpio_direction_output(pdata->vbus_pin[i], 0);
  }
 }

 device_init_wakeup(&pdev->dev, 1);
 return usb_hcd_at91_probe(&ohci_at91_hc_driver, pdev);
}

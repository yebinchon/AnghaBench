
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct udc {int connected; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_info (int *,char*) ;
 int udc_basic_init (struct udc*) ;
 int udc_enable_dev_setup_interrupts (struct udc*) ;

__attribute__((used)) static void usb_connect(struct udc *dev)
{

 dev_info(&dev->pdev->dev, "USB Connect\n");

 dev->connected = 1;


 udc_basic_init(dev);


 udc_enable_dev_setup_interrupts(dev);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct udc {scalar_t__ connected; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_info (int *,char*) ;
 int disconnect_tasklet ;
 int tasklet_schedule (int *) ;
 int udc_mask_unused_interrupts (struct udc*) ;

__attribute__((used)) static void usb_disconnect(struct udc *dev)
{

 dev_info(&dev->pdev->dev, "USB Disconnect\n");

 dev->connected = 0;


 udc_mask_unused_interrupts(dev);






 tasklet_schedule(&disconnect_tasklet);
}

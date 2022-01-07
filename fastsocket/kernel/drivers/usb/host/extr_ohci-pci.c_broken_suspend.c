
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* root_hub; } ;
struct usb_hcd {TYPE_2__ self; } ;
struct TYPE_3__ {int dev; } ;


 int device_init_wakeup (int *,int ) ;

__attribute__((used)) static int broken_suspend(struct usb_hcd *hcd)
{
 device_init_wakeup(&hcd->self.root_hub->dev, 0);
 return 0;
}

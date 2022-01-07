
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int config; int device_feature; } ;
struct TYPE_4__ {TYPE_1__ usb; } ;


 int USB_DEVICE_REMOTE_WAKEUP ;
 TYPE_2__ fw ;
 int usb_enable_remote_wakeup () ;
 int usb_pta_init () ;

void usb_init(void)
{
 usb_pta_init();

 fw.usb.config = 1;
}

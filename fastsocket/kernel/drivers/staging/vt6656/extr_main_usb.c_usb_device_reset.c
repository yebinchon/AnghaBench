
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int usb; } ;
typedef TYPE_1__* PSDevice ;


 int printk (char*,int) ;
 int usb_reset_device (int ) ;

__attribute__((used)) static void usb_device_reset(PSDevice pDevice)
{
 int status;
 status = usb_reset_device(pDevice->usb);
 if (status)
            printk("usb_device_reset fail status=%d\n",status);
 return ;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct usbdrv_private* ml_priv; } ;
typedef TYPE_1__ zdev_t ;
typedef int u8_t ;
typedef scalar_t__ u32_t ;
typedef int u16_t ;
struct usbdrv_private {int RegOutUrb; } ;


 int GFP_ATOMIC ;
 int usb_alloc_urb (int ,int ) ;
 int usb_free_urb (int ) ;
 scalar_t__ zfLnxUsbWriteReg (TYPE_1__*,scalar_t__*,int ) ;

void zfwUsbCmd(zdev_t* dev, u8_t endpt, u32_t* cmd, u16_t cmdLen)
{
    struct usbdrv_private *macp = dev->ml_priv;
    u32_t ret;


    ret = zfLnxUsbWriteReg(dev, cmd, cmdLen);


    if (ret != 0)
    {
        usb_free_urb(macp->RegOutUrb);
        macp->RegOutUrb = usb_alloc_urb(0, GFP_ATOMIC);
        ret = zfLnxUsbWriteReg(dev, cmd, cmdLen);
    }
}

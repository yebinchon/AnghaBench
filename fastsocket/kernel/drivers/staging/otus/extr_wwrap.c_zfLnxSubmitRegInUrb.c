
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct usbdrv_private* ml_priv; } ;
typedef TYPE_1__ zdev_t ;
typedef int u32_t ;
struct usbdrv_private {int regUsbReadBuf; int udev; int RegInUrb; } ;


 int USB_DIR_IN ;
 int USB_REG_IN_PIPE ;
 int ZM_USB_REG_MAX_BUF_SIZE ;
 int zfLnxUsbRegIn_callback ;
 int zfLnxUsbSubmitIntUrb (int ,int ,int ,int ,int ,int ,int ,TYPE_1__*,int) ;

u32_t zfLnxSubmitRegInUrb(zdev_t *dev)
{
    u32_t ret;
    struct usbdrv_private *macp = dev->ml_priv;
    ret = zfLnxUsbSubmitIntUrb(macp->RegInUrb, macp->udev,
            USB_REG_IN_PIPE, USB_DIR_IN, macp->regUsbReadBuf,
            ZM_USB_REG_MAX_BUF_SIZE, zfLnxUsbRegIn_callback, dev, 1);

    return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct usbdrv_private* ml_priv; } ;
typedef TYPE_1__ zdev_t ;
typedef int u32_t ;
typedef int u16_t ;
struct usbdrv_private {int regUsbWriteBuf; int udev; int RegOutUrb; } ;


 int USB_DIR_OUT ;
 int USB_REG_OUT_PIPE ;
 int cpu_to_le32 (int ) ;
 int memcpy (int ,int *,int) ;
 int zfLnxUsbRegOut_callback ;
 int zfLnxUsbSubmitIntUrb (int ,int ,int ,int ,int ,int,int ,TYPE_1__*,int) ;

u32_t zfLnxUsbWriteReg(zdev_t* dev, u32_t* cmd, u16_t cmdLen)
{
    struct usbdrv_private *macp = dev->ml_priv;
    u32_t ret;
    memcpy(macp->regUsbWriteBuf, cmd, cmdLen);



    ret = zfLnxUsbSubmitIntUrb(macp->RegOutUrb, macp->udev,
            USB_REG_OUT_PIPE, USB_DIR_OUT, macp->regUsbWriteBuf,
            cmdLen, zfLnxUsbRegOut_callback, dev, 1);

    return ret;
}

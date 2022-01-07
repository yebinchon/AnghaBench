
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct usbdrv_private* ml_priv; } ;
typedef TYPE_1__ zdev_t ;
typedef int zbuf_t ;
typedef int u32_t ;
typedef int u16_t ;
struct usbdrv_private {int RxBufTail; int RxBufCnt; int cs_lock; int RxBufHead; int ** UsbRxBufQ; } ;


 int ZM_MAX_RX_URB_NUM ;
 int printk (char*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

u32_t zfLnxPutUsbRxBuffer(zdev_t *dev, zbuf_t *buf)
{
    struct usbdrv_private *macp = dev->ml_priv;
    u16_t idx;
    unsigned long irqFlag;

    spin_lock_irqsave(&macp->cs_lock, irqFlag);

    idx = ((macp->RxBufTail+1) & (ZM_MAX_RX_URB_NUM - 1));


    if (macp->RxBufCnt != ZM_MAX_RX_URB_NUM)
    {
        macp->UsbRxBufQ[macp->RxBufTail] = buf;
        macp->RxBufTail = idx;
        macp->RxBufCnt++;
    }
    else
    {
        printk("RxBufQ inconsistent: RxBufHead: %d, RxBufTail: %d\n",
                macp->RxBufHead, macp->RxBufTail);
        spin_unlock_irqrestore(&macp->cs_lock, irqFlag);
        return 0xffff;
    }

    spin_unlock_irqrestore(&macp->cs_lock, irqFlag);
    return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct usbdrv_private* ml_priv; } ;
typedef TYPE_1__ zdev_t ;
typedef int zbuf_t ;
struct usbdrv_private {scalar_t__ RxBufCnt; size_t RxBufHead; int cs_lock; int RxBufTail; int ** UsbRxBufQ; } ;


 int ZM_MAX_RX_URB_NUM ;
 int printk (char*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

zbuf_t *zfLnxGetUsbRxBuffer(zdev_t *dev)
{
    struct usbdrv_private *macp = dev->ml_priv;

    zbuf_t *buf;
    unsigned long irqFlag;

    spin_lock_irqsave(&macp->cs_lock, irqFlag);




    if (macp->RxBufCnt != 0)
    {
        buf = macp->UsbRxBufQ[macp->RxBufHead];
        macp->RxBufHead = ((macp->RxBufHead+1) & (ZM_MAX_RX_URB_NUM - 1));
        macp->RxBufCnt--;
    }
    else
    {
        printk("RxBufQ inconsistent: RxBufHead: %d, RxBufTail: %d\n",
                macp->RxBufHead, macp->RxBufTail);
        spin_unlock_irqrestore(&macp->cs_lock, irqFlag);
        return ((void*)0);
    }

    spin_unlock_irqrestore(&macp->cs_lock, irqFlag);
    return buf;
}

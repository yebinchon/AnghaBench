
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct usbdrv_private* ml_priv; } ;
typedef TYPE_1__ zdev_t ;
typedef int u16_t ;
struct usbdrv_private {int TxUrbHead; int TxUrbCnt; int cs_lock; int TxUrbTail; } ;


 int ZM_MAX_TX_URB_NUM ;
 int printk (char*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void zfLnxPutTxUrb(zdev_t *dev)
{
    struct usbdrv_private *macp = dev->ml_priv;
    u16_t idx;
    unsigned long irqFlag;

    spin_lock_irqsave(&macp->cs_lock, irqFlag);

    idx = ((macp->TxUrbHead + 1) & (ZM_MAX_TX_URB_NUM - 1));


    if (macp->TxUrbCnt < ZM_MAX_TX_URB_NUM)
    {
        macp->TxUrbHead = idx;
        macp->TxUrbCnt++;
    }
    else
    {
        printk("UsbTxUrbQ inconsistent: TxUrbHead: %d, TxUrbTail: %d\n",
                macp->TxUrbHead, macp->TxUrbTail);
    }

    spin_unlock_irqrestore(&macp->cs_lock, irqFlag);
}

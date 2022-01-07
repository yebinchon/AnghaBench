
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct usbdrv_private* ml_priv; } ;
typedef TYPE_1__ zdev_t ;
typedef int u16_t ;
struct usbdrv_private {scalar_t__ TxUrbCnt; int TxUrbTail; int cs_lock; } ;


 int ZM_MAX_TX_URB_NUM ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

u16_t zfLnxGetFreeTxUrb(zdev_t *dev)
{
    struct usbdrv_private *macp = dev->ml_priv;
    u16_t idx;
    unsigned long irqFlag;

    spin_lock_irqsave(&macp->cs_lock, irqFlag);




    if (macp->TxUrbCnt != 0)
    {
        idx = macp->TxUrbTail;
        macp->TxUrbTail = ((macp->TxUrbTail + 1) & (ZM_MAX_TX_URB_NUM - 1));
        macp->TxUrbCnt--;
    }
    else
    {

        idx = 0xffff;
    }

    spin_unlock_irqrestore(&macp->cs_lock, irqFlag);
    return idx;
}

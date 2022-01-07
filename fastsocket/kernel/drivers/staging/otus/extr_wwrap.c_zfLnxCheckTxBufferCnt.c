
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct usbdrv_private* ml_priv; } ;
typedef TYPE_1__ zdev_t ;
typedef int u16_t ;
struct usbdrv_private {int cs_lock; int TxBufCnt; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

u16_t zfLnxCheckTxBufferCnt(zdev_t *dev)
{
    struct usbdrv_private *macp = dev->ml_priv;
    u16_t TxBufCnt;
    unsigned long irqFlag;

    spin_lock_irqsave(&macp->cs_lock, irqFlag);

    TxBufCnt = macp->TxBufCnt;

    spin_unlock_irqrestore(&macp->cs_lock, irqFlag);
    return TxBufCnt;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct usbdrv_private* ml_priv; } ;
typedef TYPE_1__ zdev_t ;
typedef scalar_t__ u32_t ;
struct usbdrv_private {int cs_lock; scalar_t__ TxBufCnt; } ;


 scalar_t__ ZM_MAX_TX_BUF_NUM ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

u32_t zfwUsbGetFreeTxQSize(zdev_t* dev)
{
    struct usbdrv_private *macp = dev->ml_priv;
    u32_t freeTxQSize;
    unsigned long irqFlag;



    spin_lock_irqsave(&macp->cs_lock, irqFlag);

    freeTxQSize = ZM_MAX_TX_BUF_NUM - macp->TxBufCnt;


    spin_unlock_irqrestore(&macp->cs_lock, irqFlag);

    return freeTxQSize;
}

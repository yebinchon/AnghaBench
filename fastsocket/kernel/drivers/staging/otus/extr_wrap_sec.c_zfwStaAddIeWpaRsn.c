
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct usbdrv_private* ml_priv; } ;
typedef TYPE_1__ zdev_t ;
typedef int zbuf_t ;
typedef int u8_t ;
typedef int u16_t ;
struct usbdrv_private {scalar_t__* supIe; } ;


 int copyToIntTxBuffer (TYPE_1__*,int *,scalar_t__*,int ,scalar_t__) ;

u16_t zfwStaAddIeWpaRsn(zdev_t* dev, zbuf_t* buf, u16_t offset, u8_t frameType)
{
    struct usbdrv_private *macp = dev->ml_priv;

    if (macp->supIe[1] != 0)
    {
        copyToIntTxBuffer(dev, buf, macp->supIe, offset, macp->supIe[1]+2);

        offset += (macp->supIe[1]+2);
    }

    return offset;
}

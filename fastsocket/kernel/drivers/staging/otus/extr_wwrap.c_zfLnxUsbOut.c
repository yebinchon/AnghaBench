
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {struct usbdrv_private* ml_priv; } ;
typedef TYPE_2__ zdev_t ;
typedef int zbuf_t ;
typedef int u8_t ;
typedef int u32_t ;
typedef int u16_t ;
struct TYPE_7__ {int (* zfcbUsbOutComplete ) (TYPE_2__*,int *,int ,int *) ;} ;
struct usbdrv_private {TYPE_1__ usbCbFunctions; } ;


 int stub1 (TYPE_2__*,int *,int ,int *) ;
 int zfLnxPutUsbTxBuffer (TYPE_2__*,int *,int ,int *,int ,int *,int ,int *,int ) ;
 int zfLnxUsbSubmitTxData (TYPE_2__*) ;

u32_t zfLnxUsbOut(zdev_t* dev, u8_t *hdr, u16_t hdrlen, u8_t *snap, u16_t snapLen,
        u8_t *tail, u16_t tailLen, zbuf_t *buf, u16_t offset)
{
    u32_t ret;
    struct usbdrv_private *macp = dev->ml_priv;





    if (zfLnxPutUsbTxBuffer(dev, hdr, hdrlen, snap, snapLen, tail, tailLen, buf, offset) == 0xffff)
    {



        macp->usbCbFunctions.zfcbUsbOutComplete(dev, buf, 0, hdr);
        return 0xffff;
    }



    ret = zfLnxUsbSubmitTxData(dev);
    return ret;
}

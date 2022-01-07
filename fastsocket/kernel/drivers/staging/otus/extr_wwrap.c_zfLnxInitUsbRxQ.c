
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct usbdrv_private* ml_priv; } ;
typedef TYPE_1__ zdev_t ;
typedef int zbuf_t ;
typedef int u16_t ;
struct usbdrv_private {int ** UsbRxBufQ; int * WlanRxDataUrb; scalar_t__ RxBufTail; scalar_t__ RxBufHead; } ;


 int ZM_MAX_RX_BUFFER_SIZE ;
 int ZM_MAX_RX_URB_NUM ;
 int * dev_alloc_skb (int ) ;
 int memset (int **,int ,int) ;
 int zfLnxPutUsbRxBuffer (TYPE_1__*,int *) ;
 int zfLnxUsbIn (TYPE_1__*,int ,int *) ;

void zfLnxInitUsbRxQ(zdev_t* dev)
{
    u16_t i;
    zbuf_t *buf;
    struct usbdrv_private *macp = dev->ml_priv;


    memset(macp->UsbRxBufQ, 0, sizeof(zbuf_t *) * ZM_MAX_RX_URB_NUM);

    macp->RxBufHead = 0;

    for (i = 0; i < ZM_MAX_RX_URB_NUM; i++)
    {

        buf = dev_alloc_skb(ZM_MAX_RX_BUFFER_SIZE);
        macp->UsbRxBufQ[i] = buf;
    }


    macp->RxBufTail = 0;


    for (i = 0; i < ZM_MAX_RX_URB_NUM; i++)
    {
        zfLnxPutUsbRxBuffer(dev, macp->UsbRxBufQ[i]);
        zfLnxUsbIn(dev, macp->WlanRxDataUrb[i], macp->UsbRxBufQ[i]);
    }
}

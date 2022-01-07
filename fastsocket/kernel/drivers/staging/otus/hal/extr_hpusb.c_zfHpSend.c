
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u8_t ;
typedef int u16_t ;
struct zsHpPriv {int * usbAcSendBytes; int usbSendBytes; } ;
struct TYPE_2__ {struct zsHpPriv* hpPrivate; } ;


 int EXTRA_INFO_LEN ;
 int USB_ENDPOINT_TX_INDEX ;
 int ZM_LV_1 ;
 int ZM_SUCCESS ;
 TYPE_1__* wd ;
 int zfAdjustCtrlSetting (int *,int*,int *) ;
 int * zfwBufAllocate (int *,int) ;
 int zfwBufFree (int *,int *,int ) ;
 int zfwBufGetSize (int *,int *) ;
 int zfwSetBufSetSize (int *,int *,int) ;
 int zfwUsbSend (int *,int ,int*,int,int*,int,int*,int,int *,int) ;
 int zm_msg1_tx (int ,char*,int) ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;
 int zmw_rx_buf_readb (int *,int *,int) ;
 int zmw_rx_buf_writeb (int *,int *,int,int) ;

u16_t zfHpSend(zdev_t* dev, u16_t* header, u16_t headerLen,
                u16_t* snap, u16_t snapLen,
                u16_t* tail, u16_t tailLen, zbuf_t* buf, u16_t offset,
                u16_t bufType, u8_t ac, u8_t keyIdx)
{
    struct zsHpPriv* hpPriv;

    zmw_get_wlan_dev(dev);
    hpPriv=wd->hpPrivate;

    zm_msg1_tx(ZM_LV_1, "zfHpSend(), len = ", 12 + headerLen-8 + snapLen + zfwBufGetSize(dev, buf) + 4 + 8);


    zfAdjustCtrlSetting(dev, header, buf);


    hpPriv->usbSendBytes += zfwBufGetSize(dev, buf);
    hpPriv->usbAcSendBytes[ac&0x3] += zfwBufGetSize(dev, buf);


    zfwUsbSend(dev, USB_ENDPOINT_TX_INDEX, (u8_t *)header, headerLen,
                  (u8_t *)snap, snapLen, (u8_t *)tail, tailLen, buf, offset);
    return ZM_SUCCESS;
}

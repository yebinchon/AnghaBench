
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u32_t ;
typedef int u16_t ;
struct zsHpPriv {int halReInit; scalar_t__ usbRxTransferLen; scalar_t__ usbRxPadLen; scalar_t__ usbRxPktLen; scalar_t__ usbRxRemainLen; int * remainBuf; scalar_t__ rxStrongRSSI; scalar_t__ strongRSSI; } ;
struct TYPE_2__ {scalar_t__ hpPrivate; } ;


 int ZM_FIRMWARE_WLAN_ADDR ;
 int ZM_SUCCESS ;
 TYPE_1__* wd ;
 scalar_t__ zcFwImage ;
 scalar_t__ zcFwImageSize ;
 scalar_t__ zcP2FwImage ;
 scalar_t__ zcP2FwImageSize ;
 int zfCoreReinit (int *) ;
 int zfFirmwareDownload (int *,int *,int ,int ) ;
 int zfHpEchoCommand (int *,int) ;
 int zfHpUsbReset (int *) ;
 int zfInitCmdQueue (int *) ;
 int zfInitMac (int *) ;
 int zfInitPhy (int *,int ,int ) ;
 int zfInitRf (int *,int ) ;
 int zfInitUsbMode (int *) ;
 int zfwBufFree (int *,int *,int ) ;
 int zmw_get_wlan_dev (int *) ;

u16_t zfHpReinit(zdev_t* dev, u32_t frequency)
{
    u16_t ret;
    zmw_get_wlan_dev(dev);

    ((struct zsHpPriv*)wd->hpPrivate)->halReInit = 1;

    ((struct zsHpPriv*)wd->hpPrivate)->strongRSSI = 0;
    ((struct zsHpPriv*)wd->hpPrivate)->rxStrongRSSI = 0;
    zfInitCmdQueue(dev);
    zfCoreReinit(dev);



    if ((ret = zfFirmwareDownload(dev, (u32_t*)zcFwImage,
            (u32_t)zcFwImageSize, ZM_FIRMWARE_WLAN_ADDR)) != ZM_SUCCESS)
    {


    }
    zfInitMac(dev);


    zfInitPhy(dev, frequency, 0);

    zfInitRf(dev, frequency);







    zfHpEchoCommand(dev, 0xAABBCCDD);

    return 0;
}

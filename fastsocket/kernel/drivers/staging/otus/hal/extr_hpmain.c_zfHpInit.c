
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u32_t ;
typedef int u16_t ;
struct zsHpPriv {int* ledMode; int slotType; int aggPktNum; int enableBBHeavyClip; int hwBBHeavyClip; scalar_t__ setValueHeavyClip; scalar_t__ doBBHeavyClip; scalar_t__ usbRxTransferLen; scalar_t__ usbRxPadLen; scalar_t__ usbRxPktLen; scalar_t__ usbRxRemainLen; int * remainBuf; scalar_t__ eepromImageRdReq; scalar_t__ eepromImageIndex; scalar_t__ rxStrongRSSI; scalar_t__ strongRSSI; scalar_t__ disableDfsCh; scalar_t__ hwExtOffset; scalar_t__ hwBw40; scalar_t__ hwFrequency; int halCapability; } ;
struct TYPE_2__ {scalar_t__ modeMDKEnable; int * hpPrivate; } ;


 int DbgPrint (char*) ;
 int ZM_FIRMWARE_WLAN_ADDR ;
 int ZM_HP_CAP_11N ;
 int ZM_SUCCESS ;
 TYPE_1__* wd ;
 scalar_t__ zcDKFwImage ;
 scalar_t__ zcDKFwImageSize ;
 scalar_t__ zcFwBufImage ;
 scalar_t__ zcFwBufImageSize ;
 scalar_t__ zcFwImage ;
 scalar_t__ zcFwImageSize ;
 int zfFirmwareDownload (int *,int *,int ,int ) ;
 int zfFirmwareDownloadNotJump (int *,int *,int ,int) ;
 int zfHpEchoCommand (int *,int) ;
 int zfHpUsbReset (int *) ;
 int zfInitCmdQueue (int *) ;
 int zfInitMac (int *) ;
 int zfInitPhy (int *,int ,int ) ;
 int zfInitRf (int *,int ) ;
 int zfInitUsbMode (int *) ;
 int zfUsbInit (int *) ;
 int zfwSleep (int *,int) ;
 int zgHpPriv ;
 int zmw_get_wlan_dev (int *) ;

u16_t zfHpInit(zdev_t* dev, u32_t frequency)
{
    u16_t ret;
    zmw_get_wlan_dev(dev);


    wd->hpPrivate = &zgHpPriv;

    ((struct zsHpPriv*)wd->hpPrivate)->halCapability = ZM_HP_CAP_11N;

    ((struct zsHpPriv*)wd->hpPrivate)->hwFrequency = 0;
    ((struct zsHpPriv*)wd->hpPrivate)->hwBw40 = 0;
    ((struct zsHpPriv*)wd->hpPrivate)->hwExtOffset = 0;

    ((struct zsHpPriv*)wd->hpPrivate)->disableDfsCh = 0;

    ((struct zsHpPriv*)wd->hpPrivate)->ledMode[0] = 1;
    ((struct zsHpPriv*)wd->hpPrivate)->ledMode[1] = 1;
    ((struct zsHpPriv*)wd->hpPrivate)->strongRSSI = 0;
    ((struct zsHpPriv*)wd->hpPrivate)->rxStrongRSSI = 0;

    ((struct zsHpPriv*)wd->hpPrivate)->slotType = 1;
    ((struct zsHpPriv*)wd->hpPrivate)->aggPktNum = 0x10000a;

    ((struct zsHpPriv*)wd->hpPrivate)->eepromImageIndex = 0;


    ((struct zsHpPriv*)wd->hpPrivate)->eepromImageRdReq = 0;
    ((struct zsHpPriv*)wd->hpPrivate)->enableBBHeavyClip = 1;
    ((struct zsHpPriv*)wd->hpPrivate)->hwBBHeavyClip = 1;
    ((struct zsHpPriv*)wd->hpPrivate)->doBBHeavyClip = 0;
    ((struct zsHpPriv*)wd->hpPrivate)->setValueHeavyClip = 0;



    zfInitCmdQueue(dev);


    zfUsbInit(dev);




    if (wd->modeMDKEnable)
    {

        if ((ret = zfFirmwareDownload(dev, (u32_t*)zcDKFwImage,
                (u32_t)zcDKFwImageSize, ZM_FIRMWARE_WLAN_ADDR)) != ZM_SUCCESS)
        {


        }
    }
    else
    {


        if ((ret = zfFirmwareDownload(dev, (u32_t*)zcFwImage,
                (u32_t)zcFwImageSize, ZM_FIRMWARE_WLAN_ADDR)) != ZM_SUCCESS)
        {


        }
    }
    if(!wd->modeMDKEnable)
    {

        zfInitMac(dev);



        zfInitPhy(dev, frequency, 0);


        zfInitRf(dev, frequency);
    }


    zfHpEchoCommand(dev, 0xAABBCCDD);

    return 0;
}

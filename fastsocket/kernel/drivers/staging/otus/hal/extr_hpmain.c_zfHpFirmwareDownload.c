
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef scalar_t__ u8_t ;
typedef int u32_t ;
typedef int u16_t ;


 int ZM_ERR_FIRMWARE_WRONG_TYPE ;
 int ZM_FIRMWARE_SPI_ADDR ;
 scalar_t__ ZM_FIRMWARE_SPI_FLASH ;
 scalar_t__ ZM_FIRMWARE_WLAN ;
 int ZM_FIRMWARE_WLAN_ADDR ;
 int ZM_SUCCESS ;
 scalar_t__ zcFwImage ;
 scalar_t__ zcFwImageSPI ;
 scalar_t__ zcFwImageSPISize ;
 scalar_t__ zcFwImageSize ;
 int zfFirmwareDownload (int *,int *,int ,int ) ;
 int zm_debug_msg1 (char*,scalar_t__) ;

u16_t zfHpFirmwareDownload(zdev_t* dev, u8_t fwType)
{
    u16_t ret = ZM_SUCCESS;

    if (fwType == ZM_FIRMWARE_WLAN)
    {
        ret = zfFirmwareDownload(dev, (u32_t*)zcFwImage,
                (u32_t)zcFwImageSize, ZM_FIRMWARE_WLAN_ADDR);
    }
    else if (fwType == ZM_FIRMWARE_SPI_FLASH)
    {
        ret = zfFirmwareDownload(dev, (u32_t*)zcFwImageSPI,
                (u32_t)zcFwImageSPISize, ZM_FIRMWARE_SPI_ADDR);
    }
    else
    {
        zm_debug_msg1("Unknown firmware type = ", fwType);
        ret = ZM_ERR_FIRMWARE_WRONG_TYPE;
    }

    return ret;
}

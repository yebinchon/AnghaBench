
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int u8_t ;
typedef int u32_t ;
typedef int u16_t ;


 int zfDelayWriteInternalReg (int *,int,int) ;
 int zfFlushDelayWrite (int *) ;

u16_t zfHpSetBssid(zdev_t* dev, u8_t* bssidSrc)
{
    u32_t address;
    u16_t *bssid = (u16_t *)bssidSrc;

    address = bssid[0] + (((u32_t)bssid[1]) << 16);
    zfDelayWriteInternalReg(dev, 0x1c3618, address);

    address = (u32_t)bssid[2];
    zfDelayWriteInternalReg(dev, 0x1c361C, address);
    zfFlushDelayWrite(dev);
    return 0;
}

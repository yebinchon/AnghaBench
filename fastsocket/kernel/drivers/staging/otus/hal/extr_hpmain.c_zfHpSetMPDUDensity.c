
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int u8_t ;
typedef int u32_t ;


 int ZM_MPDU_DENSITY_8US ;
 int zfDelayWriteInternalReg (int *,int,int) ;
 int zfFlushDelayWrite (int *) ;

void zfHpSetMPDUDensity(zdev_t* dev, u8_t density)
{
    u32_t value;

    if (density > ZM_MPDU_DENSITY_8US)
    {
        return;
    }


    value = 0x140A00 | density;

    zfDelayWriteInternalReg(dev, 0x1c3ba0, value);
    zfFlushDelayWrite(dev);
    return;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int u8_t ;
typedef int u32_t ;


 int zfDelayWriteInternalReg (int *,int,int) ;
 int zfFlushDelayWrite (int *) ;

void zfHpSWDecrypt(zdev_t* dev, u8_t enable)
{
    u32_t value = 0x70;


    if (enable == 1)
    {
        value = 0x78;
    }

    zfDelayWriteInternalReg(dev, 0x1c3678, value);
    zfFlushDelayWrite(dev);
}

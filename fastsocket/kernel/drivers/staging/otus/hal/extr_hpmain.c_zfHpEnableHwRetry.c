
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int u16_t ;


 int zfDelayWriteInternalReg (int *,int,int) ;
 int zfFlushDelayWrite (int *) ;
 int zfFwRetry (int *,int ) ;

u16_t zfHpEnableHwRetry(zdev_t* dev)
{
    u16_t ret;

    ret = zfFwRetry(dev, 0);

    zfDelayWriteInternalReg(dev, 0x1c3b28, 0x33333);
    zfFlushDelayWrite(dev);

    return ret;
}

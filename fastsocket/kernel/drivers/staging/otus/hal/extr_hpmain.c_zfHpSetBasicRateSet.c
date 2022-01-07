
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int u16_t ;


 int ZM_MAC_REG_BASIC_RATE ;
 int zfDelayWriteInternalReg (int *,int ,int) ;
 int zfFlushDelayWrite (int *) ;

void zfHpSetBasicRateSet(zdev_t* dev, u16_t bRateBasic, u16_t gRateBasic)
{
    zfDelayWriteInternalReg(dev, ZM_MAC_REG_BASIC_RATE, bRateBasic
                            | ((u16_t)gRateBasic<<8));
    zfFlushDelayWrite(dev);
}

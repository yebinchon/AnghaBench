
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int u32_t ;


 int ZM_MAC_REG_RTS_CTS_RATE ;
 int zfDelayWriteInternalReg (int *,int ,int ) ;
 int zfFlushDelayWrite (int *) ;

void zfHpSetRTSCTSRate(zdev_t* dev, u32_t rate)
{
    zfDelayWriteInternalReg(dev, ZM_MAC_REG_RTS_CTS_RATE, rate);
    zfFlushDelayWrite(dev);
}

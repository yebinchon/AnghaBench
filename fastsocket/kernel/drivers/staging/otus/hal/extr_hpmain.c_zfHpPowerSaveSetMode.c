
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef scalar_t__ u8_t ;
typedef int u16_t ;


 int ZM_MAC_REG_BCN_PERIOD ;
 int ZM_MAC_REG_PRETBTT ;
 int zfDelayWriteInternalReg (int *,int ,int) ;
 int zfFlushDelayWrite (int *) ;

void zfHpPowerSaveSetMode(zdev_t* dev, u8_t staMode, u8_t psMode, u16_t bcnInterval)
{
    if ( staMode == 0 )
    {
        if ( psMode == 0 )
        {

            zfDelayWriteInternalReg(dev, ZM_MAC_REG_PRETBTT, 0);
            zfDelayWriteInternalReg(dev, ZM_MAC_REG_BCN_PERIOD, 0);
            zfFlushDelayWrite(dev);
        }
        else
        {

            zfDelayWriteInternalReg(dev, ZM_MAC_REG_PRETBTT, (bcnInterval-6)<<16);
            zfDelayWriteInternalReg(dev, ZM_MAC_REG_BCN_PERIOD, bcnInterval);
            zfFlushDelayWrite(dev);
        }
    }
}

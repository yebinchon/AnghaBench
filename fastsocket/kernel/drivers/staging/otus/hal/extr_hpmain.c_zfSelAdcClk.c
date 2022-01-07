
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int u8_t ;
typedef scalar_t__ u32_t ;


 scalar_t__ ZM_CH_G_14 ;
 int ZM_MAC_REG_DYNAMIC_SIFS_ACK ;
 int zfDelayWriteInternalReg (int *,int ,int) ;
 int zfFlushDelayWrite (int *) ;

void zfSelAdcClk(zdev_t* dev, u8_t bw40, u32_t frequency)
{
    if(bw40 == 1)
    {

        zfDelayWriteInternalReg(dev, ZM_MAC_REG_DYNAMIC_SIFS_ACK, 0x10A);
        zfFlushDelayWrite(dev);
    }
    else
    {

        if ( frequency <= ZM_CH_G_14 )
        {
            zfDelayWriteInternalReg(dev, ZM_MAC_REG_DYNAMIC_SIFS_ACK, 0x105);
        }
        else
        {
            zfDelayWriteInternalReg(dev, ZM_MAC_REG_DYNAMIC_SIFS_ACK, 0x104);
        }
        zfFlushDelayWrite(dev);
    }
}

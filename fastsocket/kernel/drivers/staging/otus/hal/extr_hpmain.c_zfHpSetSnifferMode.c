
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef scalar_t__ u16_t ;


 int ZM_MAC_REG_SNIFFER ;
 int zfDelayWriteInternalReg (int *,int ,int) ;
 int zfFlushDelayWrite (int *) ;

u16_t zfHpSetSnifferMode(zdev_t* dev, u16_t on)
{
    if (on != 0)
    {
        zfDelayWriteInternalReg(dev, ZM_MAC_REG_SNIFFER, 0x2000001);
    }
    else
    {
        zfDelayWriteInternalReg(dev, ZM_MAC_REG_SNIFFER, 0x2000000);
    }
    zfFlushDelayWrite(dev);
    return 0;
}

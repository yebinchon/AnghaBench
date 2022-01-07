
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int u32_t ;
typedef int u16_t ;


 scalar_t__ ZM_MAC_REG_ACK_TABLE ;
 scalar_t__ ZM_MAC_REG_MAC_ADDR_H ;
 scalar_t__ ZM_MAC_REG_MAC_ADDR_L ;
 int zfDelayWriteInternalReg (int *,scalar_t__,int) ;
 int zfFlushDelayWrite (int *) ;

void zfHpSetMacAddress(zdev_t* dev, u16_t* macAddr, u16_t macAddrId)
{
    if (macAddrId == 0)
    {
        zfDelayWriteInternalReg(dev, ZM_MAC_REG_MAC_ADDR_L,
                (((u32_t)macAddr[1])<<16) | macAddr[0]);
        zfDelayWriteInternalReg(dev, ZM_MAC_REG_MAC_ADDR_H, macAddr[2]);
    }
    else if (macAddrId <= 7)
    {
        zfDelayWriteInternalReg(dev, ZM_MAC_REG_ACK_TABLE+((macAddrId-1)*8),
                macAddr[0] + ((u32_t)macAddr[1]<<16));
        zfDelayWriteInternalReg(dev, ZM_MAC_REG_ACK_TABLE+((macAddrId-1)*8)+4,
                macAddr[2]);
    }
    zfFlushDelayWrite(dev);
}

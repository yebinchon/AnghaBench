
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef size_t u8_t ;
typedef int u32_t ;
struct zsMulticastAddr {int* addr; } ;


 int ZM_MAC_REG_GROUP_HASH_TBL_H ;
 int ZM_MAC_REG_GROUP_HASH_TBL_L ;
 int zfDelayWriteInternalReg (int *,int ,int) ;
 int zfFlushDelayWrite (int *) ;

void zfHpSetMulticastList(zdev_t* dev, u8_t size, u8_t* pList, u8_t bAllMulticast)
{
    struct zsMulticastAddr* pMacList = (struct zsMulticastAddr*) pList;
    u8_t i;
    u32_t value;
    u32_t swRegMulHashValueH, swRegMulHashValueL;

    swRegMulHashValueH = 0x80000000;
    swRegMulHashValueL = 0;

    if ( bAllMulticast )
    {
        swRegMulHashValueH = swRegMulHashValueL = ~0;
    }
    else
    {
        for(i=0; i<size; i++)
        {
            value = pMacList[i].addr[5] >> 2;

            if ( value < 32 )
            {
                swRegMulHashValueL |= (1 << value);
            }
            else
            {
                swRegMulHashValueH |= (1 << (value-32));
            }
        }
    }

    zfDelayWriteInternalReg(dev, ZM_MAC_REG_GROUP_HASH_TBL_L,
                            swRegMulHashValueL);
    zfDelayWriteInternalReg(dev, ZM_MAC_REG_GROUP_HASH_TBL_H,
                            swRegMulHashValueH);
    zfFlushDelayWrite(dev);
    return;
}

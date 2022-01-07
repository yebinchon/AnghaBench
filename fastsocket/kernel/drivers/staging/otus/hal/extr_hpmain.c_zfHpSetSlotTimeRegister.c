
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef scalar_t__ u8_t ;


 int ZM_MAC_REG_SLOT_TIME ;
 int zfDelayWriteInternalReg (int *,int ,int) ;

void zfHpSetSlotTimeRegister(zdev_t* dev, u8_t type)
{
    if(type == 0)
    {

        zfDelayWriteInternalReg(dev, ZM_MAC_REG_SLOT_TIME, 20<<10);
    }
    else
    {

        zfDelayWriteInternalReg(dev, ZM_MAC_REG_SLOT_TIME, 9<<10);
    }
}

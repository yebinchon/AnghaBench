
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int u32_t ;


 int zfDelayWriteInternalReg (int *,int ,int ) ;

u32_t zfiDbgDelayWriteReg(zdev_t* dev, u32_t addr, u32_t val)
{
 zfDelayWriteInternalReg(dev, addr, val);
 return 0;
}

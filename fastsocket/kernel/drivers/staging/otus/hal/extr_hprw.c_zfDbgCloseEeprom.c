
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;


 int zfDelayWriteInternalReg (int *,int,int) ;
 int zfFlushDelayWrite (int *) ;

void zfDbgCloseEeprom(zdev_t* dev)
{

    zfDelayWriteInternalReg(dev, 0x1D1400, 0x87654321);



    zfFlushDelayWrite(dev);
}

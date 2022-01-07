
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;


 int zfDelayWriteInternalReg (int *,int,int) ;
 int zfFlushDelayWrite (int *) ;

void zfDbgOpenEeprom(zdev_t* dev)
{

    zfDelayWriteInternalReg(dev, 0x1D1400, 0x12345678);
    zfDelayWriteInternalReg(dev, 0x1D1404, 0x55aa00ff);
    zfDelayWriteInternalReg(dev, 0x1D1408, 0x13579ace);
    zfDelayWriteInternalReg(dev, 0x1D1414, 0x0);
    zfFlushDelayWrite(dev);
}

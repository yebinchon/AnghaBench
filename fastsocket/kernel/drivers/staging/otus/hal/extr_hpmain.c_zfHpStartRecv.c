
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int u16_t ;


 int zfDelayWriteInternalReg (int *,int,int) ;
 int zfFlushDelayWrite (int *) ;

u16_t zfHpStartRecv(zdev_t* dev)
{
    zfDelayWriteInternalReg(dev, 0x1c3d30, 0x100);
    zfFlushDelayWrite(dev);

    return 0;
}

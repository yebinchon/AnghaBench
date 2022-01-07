
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int u32_t ;


 int zfwUsbGetMaxTxQSize (int *) ;

u32_t zfHpGetMaxTxdCount(zdev_t* dev)
{

    return zfwUsbGetMaxTxQSize(dev);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int u16_t ;


 int zfUsbFree (int *) ;

u16_t zfHpRelease(zdev_t* dev)
{

    zfUsbFree(dev);

    return 0;
}

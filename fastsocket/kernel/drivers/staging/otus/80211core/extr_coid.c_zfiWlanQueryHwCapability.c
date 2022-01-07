
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int u32_t ;


 int zfHpCapability (int *) ;

u32_t zfiWlanQueryHwCapability(zdev_t* dev)
{
    return zfHpCapability(dev);
}

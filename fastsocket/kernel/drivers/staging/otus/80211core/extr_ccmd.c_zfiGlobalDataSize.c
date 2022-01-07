
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int u32_t ;
typedef int u16_t ;
struct zsWlanDev {int dummy; } ;


 int zm_assert (int) ;

u16_t zfiGlobalDataSize(zdev_t *dev)
{
 u32_t ret;
 ret = (sizeof(struct zsWlanDev));
 zm_assert((ret>>16) == 0);
 return (u16_t)ret;
}

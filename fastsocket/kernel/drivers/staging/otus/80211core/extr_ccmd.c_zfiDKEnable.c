
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u32_t ;
struct TYPE_2__ {int modeMDKEnable; } ;


 TYPE_1__* wd ;
 int zm_debug_msg1 (char*,int ) ;
 int zmw_get_wlan_dev (int *) ;

void zfiDKEnable(zdev_t *dev, u32_t enable)
{
 zmw_get_wlan_dev(dev);

 wd->modeMDKEnable = enable;
 zm_debug_msg1("modeMDKEnable = ", wd->modeMDKEnable);
}

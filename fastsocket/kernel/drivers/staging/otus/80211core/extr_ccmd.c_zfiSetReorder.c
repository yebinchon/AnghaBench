
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u16_t ;
struct TYPE_2__ {int reorder; } ;


 TYPE_1__* wd ;
 int zmw_get_wlan_dev (int *) ;

void zfiSetReorder(zdev_t *dev, u16_t value)
{
 zmw_get_wlan_dev(dev);

 wd->reorder = value;
}

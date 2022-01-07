
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u16_t ;
struct TYPE_3__ {int regionCode; } ;
struct TYPE_4__ {TYPE_1__ regulationTable; } ;


 TYPE_2__* wd ;
 int zmw_get_wlan_dev (int *) ;

u16_t zfiWlanQueryRegionCode(zdev_t* dev)
{
    zmw_get_wlan_dev(dev);

    return wd->regulationTable.regionCode;
}

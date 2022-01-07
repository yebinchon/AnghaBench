
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u16_t ;
struct TYPE_4__ {int size; } ;
struct TYPE_5__ {TYPE_1__ multicastList; } ;
struct TYPE_6__ {TYPE_2__ sta; } ;


 TYPE_3__* wd ;
 int zmw_get_wlan_dev (int *) ;

u16_t zfiWlanGetMulticastAddressCount(zdev_t* dev)
{
    zmw_get_wlan_dev(dev);

    return wd->sta.multicastList.size;
}

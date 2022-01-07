
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u16_t ;
struct TYPE_3__ {int* capability; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;


 TYPE_2__* wd ;
 int zmw_get_wlan_dev (int *) ;

u16_t zfiWlanQueryCapability(zdev_t* dev)
{
    u16_t capability;

    zmw_get_wlan_dev(dev);

    capability = wd->sta.capability[0] +
                 (((u16_t) wd->sta.capability[1]) << 8);

    return capability;

}

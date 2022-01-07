
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
struct TYPE_5__ {int encryMode; } ;
struct TYPE_4__ {int * encryMode; } ;
struct TYPE_6__ {scalar_t__ wlanMode; TYPE_2__ sta; TYPE_1__ ap; } ;


 scalar_t__ ZM_MODE_AP ;
 TYPE_3__* wd ;
 int zmw_get_wlan_dev (int *) ;

u8_t zfiWlanQueryEncryMode(zdev_t* dev)
{
    zmw_get_wlan_dev(dev);

    if (wd->wlanMode == ZM_MODE_AP)
        return wd->ap.encryMode[0];
    else
        return wd->sta.encryMode;
}

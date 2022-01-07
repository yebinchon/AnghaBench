
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
typedef void* u8_t ;
typedef int u16_t ;
struct TYPE_5__ {void* wpaSupport; } ;
struct TYPE_4__ {void** wpaSupport; } ;
struct TYPE_6__ {scalar_t__ wlanMode; TYPE_2__ sta; TYPE_1__ ap; } ;


 scalar_t__ ZM_MODE_AP ;
 TYPE_3__* wd ;
 int zfwGetVapId (int *) ;
 int zmw_get_wlan_dev (int *) ;

void zfiWlanSetWpaSupport(zdev_t* dev, u8_t WpaSupport)
{
    u16_t vapId = 0;
    zmw_get_wlan_dev(dev);

    if (wd->wlanMode == ZM_MODE_AP)
    {
        vapId = zfwGetVapId(dev);

        if (vapId == 0xffff)
            vapId = 0;
        else
            vapId++;

        wd->ap.wpaSupport[vapId] = WpaSupport;
    }
    else
    {
        wd->sta.wpaSupport = WpaSupport;
    }

}

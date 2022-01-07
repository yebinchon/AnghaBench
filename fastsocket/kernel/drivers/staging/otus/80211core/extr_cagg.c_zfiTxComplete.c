
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
struct TYPE_3__ {scalar_t__ EnableHT; } ;
struct TYPE_4__ {scalar_t__ wlanMode; TYPE_1__ sta; } ;


 scalar_t__ ZM_MODE_AP ;
 scalar_t__ ZM_MODE_INFRASTRUCTURE ;
 scalar_t__ ZM_MODE_PSEUDO ;
 TYPE_2__* wd ;
 int zfAggTxScheduler (int *,int ) ;
 int zmw_get_wlan_dev (int *) ;

void zfiTxComplete(zdev_t* dev)
{

    zmw_get_wlan_dev(dev);



    if( (wd->wlanMode == ZM_MODE_AP) ||
        (wd->wlanMode == ZM_MODE_INFRASTRUCTURE && wd->sta.EnableHT) ||
        (wd->wlanMode == ZM_MODE_PSEUDO) ) {
        zfAggTxScheduler(dev, 0);
    }

    return;
}

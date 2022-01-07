
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
struct TYPE_3__ {scalar_t__ flagFreqChanging; scalar_t__ flagKeyChanging; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;


 TYPE_2__* wd ;
 int zmw_get_wlan_dev (int *) ;

void zfCoreReinit(zdev_t* dev)
{
    zmw_get_wlan_dev(dev);

    wd->sta.flagKeyChanging = 0;
    wd->sta.flagFreqChanging = 0;
}

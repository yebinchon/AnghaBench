
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u16_t ;
struct TYPE_3__ {int activescanTickPerChannel; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;


 int ZM_MS_PER_TICK ;
 TYPE_2__* wd ;
 int zm_debug_msg1 (char*,int) ;
 int zmw_get_wlan_dev (int *) ;

void zfiWlanSetScanTimerPerChannel(zdev_t* dev, u16_t time)
{
    zmw_get_wlan_dev(dev);

    zm_debug_msg1("scan time (ms) = ", time);

    wd->sta.activescanTickPerChannel = time / ZM_MS_PER_TICK;
}

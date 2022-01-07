
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u32_t ;
struct TYPE_3__ {int connPowerInHalfDbm; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;


 TYPE_2__* wd ;
 int zfHpGetTransmitPower (int *) ;
 scalar_t__ zfStaIsConnected (int *) ;
 int zmw_get_wlan_dev (int *) ;

u32_t zfiWlanQueryTransmitPower(zdev_t* dev)
{
    u32_t ret = 0;

    zmw_get_wlan_dev(dev);

    if (zfStaIsConnected(dev)) {
        ret = wd->sta.connPowerInHalfDbm;
    } else {
        ret = zfHpGetTransmitPower(dev);
    }

    return ret;
}

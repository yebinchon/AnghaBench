
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef scalar_t__ u8_t ;
struct TYPE_3__ {scalar_t__ bSafeMode; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;


 TYPE_2__* wd ;
 int zfStaDisableSWEncryption (int *) ;
 int zfStaEnableSWEncryption (int *,int) ;
 int zmw_get_wlan_dev (int *) ;

void zfiWlanSetSafeModeEnabled(zdev_t* dev, u8_t safeMode)
{
    zmw_get_wlan_dev(dev);

    wd->sta.bSafeMode = safeMode;

    if ( safeMode )
     zfStaEnableSWEncryption(dev, 1);
    else
        zfStaDisableSWEncryption(dev);
}

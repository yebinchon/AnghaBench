
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef scalar_t__ u8_t ;
struct TYPE_3__ {scalar_t__ bProtectionMode; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;


 scalar_t__ TRUE ;
 int ZM_LV_1 ;
 TYPE_2__* wd ;
 int zfHpSetSlotTime (int *,int) ;
 int zm_msg1_mm (int ,char*,scalar_t__) ;
 int zmw_get_wlan_dev (int *) ;

void zfiWlanSetProtectionMode(zdev_t* dev, u8_t mode)
{
    zmw_get_wlan_dev(dev);

    wd->sta.bProtectionMode = mode;
    if (wd->sta.bProtectionMode == TRUE)
    {
        zfHpSetSlotTime(dev, 0);
    }
    else
    {
        zfHpSetSlotTime(dev, 1);
    }

    zm_msg1_mm(ZM_LV_1, "wd->protectionMode=", wd->sta.bProtectionMode);
}

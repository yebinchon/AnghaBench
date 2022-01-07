
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef scalar_t__ u8_t ;
typedef scalar_t__ u32_t ;
struct TYPE_3__ {scalar_t__ bAllMulticast; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;


 int ZM_LV_0 ;
 TYPE_2__* wd ;
 int zm_msg1_mm (int ,char*,scalar_t__) ;
 int zmw_get_wlan_dev (int *) ;

void zfiWlanSetAllMulticast(zdev_t *dev, u32_t setting)
{
 zmw_get_wlan_dev(dev);
 zm_msg1_mm(ZM_LV_0, "sta.bAllMulticast = ", setting);
 wd->sta.bAllMulticast = (u8_t)setting;
}

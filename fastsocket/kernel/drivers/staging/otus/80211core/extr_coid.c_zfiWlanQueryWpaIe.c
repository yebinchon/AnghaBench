
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef scalar_t__ u8_t ;
struct TYPE_3__ {scalar_t__* wpaIe; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;


 TYPE_2__* wd ;
 int zfMemoryCopy (scalar_t__*,scalar_t__*,scalar_t__) ;
 int zmw_get_wlan_dev (int *) ;

void zfiWlanQueryWpaIe(zdev_t* dev, u8_t* ie, u8_t* pLength)
{
    u8_t len;

    zmw_get_wlan_dev(dev);

    len = wd->sta.wpaIe[1] + 2;
    zfMemoryCopy(ie, wd->sta.wpaIe, len);
    *pLength = len;

}

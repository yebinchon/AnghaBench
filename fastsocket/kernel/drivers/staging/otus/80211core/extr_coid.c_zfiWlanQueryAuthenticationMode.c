
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
typedef scalar_t__ u8_t ;
struct TYPE_5__ {scalar_t__ currentAuthMode; } ;
struct TYPE_4__ {scalar_t__ authMode; } ;
struct TYPE_6__ {TYPE_2__ sta; TYPE_1__ ws; } ;


 TYPE_3__* wd ;
 int zmw_get_wlan_dev (int *) ;

u8_t zfiWlanQueryAuthenticationMode(zdev_t* dev, u8_t bWrapper)
{
    u8_t authMode;

    zmw_get_wlan_dev(dev);

    if ( bWrapper )
    {
        authMode = wd->ws.authMode;
    }
    else
    {

        authMode = wd->sta.currentAuthMode;
    }

    return authMode;
}

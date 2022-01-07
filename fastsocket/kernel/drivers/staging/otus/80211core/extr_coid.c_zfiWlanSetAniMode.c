
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef scalar_t__ u8_t ;
struct TYPE_2__ {scalar_t__ aniEnable; } ;


 TYPE_1__* wd ;
 int zfHpAniAttach (int *) ;
 int zmw_get_wlan_dev (int *) ;

u8_t zfiWlanSetAniMode(zdev_t* dev, u8_t mode)
{
    zmw_get_wlan_dev(dev);

    wd->aniEnable = mode;
    if (mode)
        zfHpAniAttach(dev);

    return 0;
}

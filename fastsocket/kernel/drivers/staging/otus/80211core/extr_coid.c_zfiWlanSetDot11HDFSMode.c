
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef scalar_t__ u8_t ;
struct TYPE_3__ {int * capability; scalar_t__ DFSEnable; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;


 int ZM_BIT_0 ;
 TYPE_2__* wd ;
 int zmw_get_wlan_dev (int *) ;

u8_t zfiWlanSetDot11HDFSMode(zdev_t* dev, u8_t mode)
{
    zmw_get_wlan_dev(dev);
    wd->sta.DFSEnable = mode;
    if (mode)
        wd->sta.capability[1] |= ZM_BIT_0;
    else
        wd->sta.capability[1] &= (~ZM_BIT_0);

    return 0;
}

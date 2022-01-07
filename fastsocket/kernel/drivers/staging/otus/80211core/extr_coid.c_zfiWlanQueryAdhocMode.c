
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
typedef scalar_t__ u8_t ;
typedef int u32_t ;
struct TYPE_5__ {int bIbssGMode; } ;
struct TYPE_4__ {int adhocMode; } ;
struct TYPE_6__ {TYPE_2__ wfc; TYPE_1__ ws; } ;


 TYPE_3__* wd ;
 int zmw_get_wlan_dev (int *) ;

u32_t zfiWlanQueryAdhocMode(zdev_t* dev, u8_t bWrapper)
{
    u32_t adhocMode;

    zmw_get_wlan_dev(dev);

    if ( bWrapper )
    {
        adhocMode = wd->ws.adhocMode;
    }
    else
    {
        adhocMode = wd->wfc.bIbssGMode;
    }

    return adhocMode;
}

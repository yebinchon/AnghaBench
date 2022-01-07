
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef size_t u8_t ;
struct zsBssInfo {int dummy; } ;
struct TYPE_3__ {int ** bssInfoArray; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;


 size_t ZM_MAX_BSS ;
 TYPE_2__* wd ;
 int zfBssInfoRefresh (int *,int) ;
 int zfwMemFree (int *,int *,int) ;
 int zm_assert (int ) ;
 int zmw_get_wlan_dev (int *) ;

void zfBssInfoDestroy(zdev_t* dev)
{
    u8_t i;
    zmw_get_wlan_dev(dev);

    zfBssInfoRefresh(dev, 1);

    for( i=0; i< ZM_MAX_BSS; i++ )
    {
        if (wd->sta.bssInfoArray[i] != ((void*)0))
        {
            zfwMemFree(dev, wd->sta.bssInfoArray[i], sizeof(struct zsBssInfo));
        }
        else
        {
            zm_assert(0);
        }
    }
    return;
}

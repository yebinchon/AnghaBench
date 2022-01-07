
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
struct TYPE_3__ {scalar_t__ adapterState; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;


 int FALSE ;
 int TRUE ;
 scalar_t__ ZM_STA_STATE_CONNECTING ;
 TYPE_2__* wd ;
 int zmw_get_wlan_dev (int *) ;

u8_t zfStaIsConnecting(zdev_t* dev)
{
    zmw_get_wlan_dev(dev);

    if ( wd->sta.adapterState == ZM_STA_STATE_CONNECTING )
    {
        return TRUE;
    }

    return FALSE;
}

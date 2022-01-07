
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
struct zsMicVar {int dummy; } ;
struct TYPE_3__ {scalar_t__ encryMode; scalar_t__ wpaState; struct zsMicVar txMicKey; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;


 scalar_t__ ZM_STA_WPA_STATE_PK_OK ;
 scalar_t__ ZM_TKIP ;
 TYPE_2__* wd ;
 int zmw_get_wlan_dev (int *) ;

struct zsMicVar* zfStaGetTxMicKey(zdev_t* dev, zbuf_t* buf)
{
    zmw_get_wlan_dev(dev);




    if ( (wd->sta.encryMode != ZM_TKIP) || (wd->sta.wpaState < ZM_STA_WPA_STATE_PK_OK) )
    {
        return ((void*)0);
    }

    return (&wd->sta.txMicKey);
}

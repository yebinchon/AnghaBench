
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
typedef int u32_t ;
struct TYPE_4__ {int ns_avgbrssi; } ;
struct TYPE_5__ {TYPE_1__ ast_nodestats; } ;
struct zsHpPriv {TYPE_2__ stats; } ;
struct TYPE_6__ {struct zsHpPriv* hpPrivate; } ;


 TYPE_3__* wd ;
 int zmw_get_wlan_dev (int *) ;

u32_t zfHpAniUpdateRssi(zdev_t* dev, u8_t rssi)
{
    struct zsHpPriv* hpPriv;

    zmw_get_wlan_dev(dev);
    hpPriv=wd->hpPrivate;

    hpPriv->stats.ast_nodestats.ns_avgbrssi = rssi;

    return 0;
}

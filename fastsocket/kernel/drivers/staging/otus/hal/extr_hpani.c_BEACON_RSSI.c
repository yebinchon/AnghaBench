
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
struct TYPE_4__ {int ns_avgbrssi; } ;
struct TYPE_5__ {TYPE_1__ ast_nodestats; } ;
struct zsHpPriv {TYPE_2__ stats; } ;
typedef int s32_t ;
struct TYPE_6__ {scalar_t__ hpPrivate; } ;


 int ZM_HAL_EP_RND (int ,int ) ;
 int ZM_HAL_RSSI_EP_MULTIPLIER ;
 TYPE_3__* wd ;
 int zmw_get_wlan_dev (int *) ;

s32_t BEACON_RSSI(zdev_t* dev)
{
    s32_t rssi;
    struct zsHpPriv *HpPriv;

    zmw_get_wlan_dev(dev);
    HpPriv = (struct zsHpPriv*)wd->hpPrivate;

    rssi = ZM_HAL_EP_RND(HpPriv->stats.ast_nodestats.ns_avgbrssi, ZM_HAL_RSSI_EP_MULTIPLIER);

    return rssi;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
struct zsAdditionInfo {int dummy; } ;
struct TYPE_4__ {scalar_t__ bssCount; } ;
struct TYPE_5__ {TYPE_1__ bssList; } ;
struct TYPE_6__ {int heartBeatNotification; TYPE_2__ sta; } ;


 int ZM_BSSID_LIST_SCAN ;
 int ZM_LV_0 ;
 scalar_t__ ZM_MAX_BSS ;
 TYPE_3__* wd ;
 int zfProcessProbeRsp (int *,int *,struct zsAdditionInfo*) ;
 int zm_msg0_mm (int ,char*) ;
 int zmw_get_wlan_dev (int *) ;

void zfApProcessProbeRsp(zdev_t* dev, zbuf_t* buf, struct zsAdditionInfo* AddInfo)
{
}

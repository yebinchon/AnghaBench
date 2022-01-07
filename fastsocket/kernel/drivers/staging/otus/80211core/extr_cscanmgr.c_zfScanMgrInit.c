
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
struct TYPE_4__ {int scanStartDelay; int currScanType; scalar_t__* scanReqs; } ;
struct TYPE_5__ {TYPE_1__ scanMgr; } ;
struct TYPE_6__ {TYPE_2__ sta; } ;


 int ZM_SCAN_MGR_SCAN_NONE ;
 TYPE_3__* wd ;
 int zmw_get_wlan_dev (int *) ;

void zfScanMgrInit(zdev_t* dev)
{
    zmw_get_wlan_dev(dev);

    wd->sta.scanMgr.scanReqs[0] = 0;
    wd->sta.scanMgr.scanReqs[1] = 0;

    wd->sta.scanMgr.currScanType = ZM_SCAN_MGR_SCAN_NONE;
    wd->sta.scanMgr.scanStartDelay = 3;

}

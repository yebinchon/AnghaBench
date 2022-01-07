
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
typedef int u16_t ;
struct TYPE_3__ {scalar_t__ bAutoReconnect; } ;
struct TYPE_4__ {TYPE_1__ sta; int (* zfcbConnectNotify ) (int *,int ,int *) ;} ;


 int ZM_SCAN_MGR_SCAN_INTERNAL ;
 int ZM_STA_STATE_DISCONNECT ;
 int stub1 (int *,int ,int *) ;
 TYPE_2__* wd ;
 int zfChangeAdapterState (int *,int ) ;
 int zfScanMgrScanStart (int *,int ) ;
 int zfScanMgrScanStop (int *,int ) ;
 int zfStaPutApIntoBlockingList (int *,int *,int ) ;
 int zm_debug_msg0 (char*) ;
 int zmw_get_wlan_dev (int *) ;

void zfStaConnectFail(zdev_t* dev, u16_t reason, u16_t* bssid, u8_t weight)
{
    zmw_get_wlan_dev(dev);


    zfChangeAdapterState(dev, ZM_STA_STATE_DISCONNECT);





    if (wd->zfcbConnectNotify != ((void*)0))
    {
        wd->zfcbConnectNotify(dev, reason, bssid);
    }


    zfStaPutApIntoBlockingList(dev, (u8_t *)bssid, weight);


    if ( wd->sta.bAutoReconnect )
    {
        zm_debug_msg0("Start internal scan...");
        zfScanMgrScanStop(dev, ZM_SCAN_MGR_SCAN_INTERNAL);
        zfScanMgrScanStart(dev, ZM_SCAN_MGR_SCAN_INTERNAL);
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
struct TYPE_3__ {scalar_t__ powerSaveMode; scalar_t__ ibssPrevPSDataCount; scalar_t__ txBeaconInd; scalar_t__ recvAtim; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;


 scalar_t__ ZM_STA_PS_NONE ;
 TYPE_2__* wd ;
 int zfPowerSavingMgrOnHandleT1 (int *) ;
 int zm_debug_msg0 (char*) ;
 int zmw_get_wlan_dev (int *) ;

void zfPowerSavingMgrAtimWinExpired(zdev_t* dev)
{
    zmw_get_wlan_dev(dev);


    if ( wd->sta.powerSaveMode == ZM_STA_PS_NONE )
    {
        return;
    }




    if ( wd->sta.recvAtim )
    {
        wd->sta.recvAtim = 0;
        zm_debug_msg0("Can't sleep due to receving ATIM window!");
        return;
    }



    if ( wd->sta.txBeaconInd )
    {
        zm_debug_msg0("Can't sleep due to just transmit a beacon!");
        return;
    }


    if ( wd->sta.ibssPrevPSDataCount != 0 )
    {
        zm_debug_msg0("Can't sleep due to buffering data for the others!");
        return;
    }



    zfPowerSavingMgrOnHandleT1(dev);
}

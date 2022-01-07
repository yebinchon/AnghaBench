
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
struct TYPE_3__ {int adapterState; } ;
struct TYPE_4__ {int wlanMode; TYPE_1__ sta; } ;


 int ZM_MODE_IBSS ;
 int ZM_MODE_INFRASTRUCTURE ;



 TYPE_2__* wd ;
 int zfPowerSavingMgrDisconnectMain (int *) ;
 int zfPowerSavingMgrIBSSMain (int *) ;
 int zfPowerSavingMgrInfraMain (int *) ;
 int zmw_get_wlan_dev (int *) ;

void zfPowerSavingMgrMain(zdev_t* dev)
{
    zmw_get_wlan_dev(dev);

    switch (wd->sta.adapterState)
    {
    case 128:
        zfPowerSavingMgrDisconnectMain(dev);
        break;
    case 130:
        {
            if (wd->wlanMode == ZM_MODE_INFRASTRUCTURE) {
                zfPowerSavingMgrInfraMain(dev);
            } else if (wd->wlanMode == ZM_MODE_IBSS) {
                zfPowerSavingMgrIBSSMain(dev);
            }
        }
        break;
    case 129:
    default:
        break;
    }
}

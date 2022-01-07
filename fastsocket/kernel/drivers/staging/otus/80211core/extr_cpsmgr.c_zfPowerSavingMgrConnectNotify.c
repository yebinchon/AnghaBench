
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
struct TYPE_3__ {int powerSaveMode; } ;
struct TYPE_4__ {scalar_t__ wlanMode; int beaconInterval; TYPE_1__ sta; } ;


 scalar_t__ ZM_MODE_INFRASTRUCTURE ;




 TYPE_2__* wd ;
 int zfHpPowerSaveSetMode (int *,int ,int,int ) ;
 int zmw_get_wlan_dev (int *) ;

void zfPowerSavingMgrConnectNotify(zdev_t *dev)
{
    zmw_get_wlan_dev(dev);

    if ( wd->wlanMode == ZM_MODE_INFRASTRUCTURE )
    {
        switch(wd->sta.powerSaveMode)
        {
            case 128:
                zfHpPowerSaveSetMode(dev, 0, 0, wd->beaconInterval);
                break;

            case 131:
            case 129:
            case 130:
                zfHpPowerSaveSetMode(dev, 0, 1, wd->beaconInterval);
                break;

            default:
                zfHpPowerSaveSetMode(dev, 0, 0, wd->beaconInterval);
                break;
        }
    }
}

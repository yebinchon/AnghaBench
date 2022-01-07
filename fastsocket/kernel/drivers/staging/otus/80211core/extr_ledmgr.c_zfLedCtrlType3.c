
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
struct TYPE_5__ {int counter; int* ledMode; scalar_t__ txTraffic; scalar_t__ rxTraffic; } ;
struct TYPE_4__ {scalar_t__ bChannelScan; scalar_t__ bAutoReconnect; } ;
struct TYPE_6__ {scalar_t__ state; TYPE_2__ ledStruct; TYPE_1__ sta; } ;


 scalar_t__ TRUE ;
 scalar_t__ ZM_WLAN_STATE_DISABLED ;
 TYPE_3__* wd ;
 int zfHpLedCtrl (int *,int,int) ;
 int zfLedCtrlType3_scan (int *,int) ;
 scalar_t__ zfPowerSavingMgrIsSleeping (int *) ;
 scalar_t__ zfStaIsConnected (int *) ;
 int zmw_get_wlan_dev (int *) ;

void zfLedCtrlType3(zdev_t* dev)
{
    zmw_get_wlan_dev(dev);

    if (zfStaIsConnected(dev) != TRUE)
    {

        if(wd->ledStruct.counter % 2 != 0)
     {






            return;
        }

        if (((wd->state == ZM_WLAN_STATE_DISABLED) && (wd->sta.bChannelScan))
            || ((wd->state != ZM_WLAN_STATE_DISABLED) && (wd->sta.bAutoReconnect)))
        {

            zfLedCtrlType3_scan(dev, 0);
        }
        else
        {

            zfHpLedCtrl(dev, 0, 0);
            zfHpLedCtrl(dev, 1, 0);
        }
    }
    else
    {
        if( wd->sta.bChannelScan )
        {

            if(wd->ledStruct.counter % 2 != 0)
                return;
            zfLedCtrlType3_scan(dev, 1);
            return;
        }

        if ((zfPowerSavingMgrIsSleeping(dev)) && ((wd->ledStruct.ledMode[0] & 0x8) == 0))
        {

            zfHpLedCtrl(dev, 0, 0);
            zfHpLedCtrl(dev, 1, 0);
        }
        else
        {

            if ((wd->ledStruct.counter & 1) == 0)
            {

                zfHpLedCtrl(dev, 0, 1);
                zfHpLedCtrl(dev, 1, 1);
            }
            else
            {
                if ((wd->ledStruct.txTraffic > 0) || (wd->ledStruct.rxTraffic > 0))
                {





                    wd->ledStruct.txTraffic = wd->ledStruct.rxTraffic = 0;
                    zfHpLedCtrl(dev, 0, 0);
                    zfHpLedCtrl(dev, 1, 0);
                }
            }
        }
    }
}

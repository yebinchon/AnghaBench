
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u32_t ;
typedef size_t u16_t ;
struct TYPE_5__ {int counter; int* ledMode; scalar_t__ txTraffic; scalar_t__ rxTraffic; } ;
struct TYPE_4__ {scalar_t__ bChannelScan; scalar_t__ bAutoReconnect; } ;
struct TYPE_6__ {scalar_t__ state; int frequency; TYPE_2__ ledStruct; TYPE_1__ sta; } ;


 scalar_t__ TRUE ;
 scalar_t__ ZM_WLAN_STATE_DISABLED ;
 TYPE_3__* wd ;
 int zfHpLedCtrl (int *,size_t,int) ;
 int zfLedCtrlType2_scan (int *) ;
 scalar_t__ zfPowerSavingMgrIsSleeping (int *) ;
 scalar_t__ zfStaIsConnected (int *) ;
 int zmw_get_wlan_dev (int *) ;

void zfLedCtrlType2(zdev_t* dev)
{
    u32_t ton, toff, tmp, period;
    u16_t OperateLED;
    zmw_get_wlan_dev(dev);

    if (zfStaIsConnected(dev) != TRUE)
    {

        if(wd->ledStruct.counter % 4 != 0)
     {







            return;
        }

        if (((wd->state == ZM_WLAN_STATE_DISABLED) && (wd->sta.bChannelScan))
            || ((wd->state != ZM_WLAN_STATE_DISABLED) && (wd->sta.bAutoReconnect)))
        {

            zfLedCtrlType2_scan(dev);
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

            if(wd->ledStruct.counter % 4 != 0)
                return;
            zfLedCtrlType2_scan(dev);
            return;
        }

        if(wd->frequency < 3000)
        {
            OperateLED = 0;
            zfHpLedCtrl(dev, 1, 0);
        }
        else
        {
            OperateLED = 1;
            zfHpLedCtrl(dev, 0, 0);
        }

        if ((zfPowerSavingMgrIsSleeping(dev)) && ((wd->ledStruct.ledMode[OperateLED] & 0x8) == 0))
        {

            zfHpLedCtrl(dev, OperateLED, 0);
        }
        else
        {

            if ((wd->ledStruct.counter & 1) == 0)
            {

                zfHpLedCtrl(dev, OperateLED, 1);
            }
            else
            {
                if ((wd->ledStruct.txTraffic > 0) || (wd->ledStruct.rxTraffic > 0))
                {





                    wd->ledStruct.txTraffic = wd->ledStruct.rxTraffic = 0;
                    zfHpLedCtrl(dev, OperateLED, 0);
                }
            }
        }
    }
}

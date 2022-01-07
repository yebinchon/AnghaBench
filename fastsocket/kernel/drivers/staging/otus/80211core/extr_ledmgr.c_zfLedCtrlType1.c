
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u32_t ;
typedef size_t u16_t ;
struct TYPE_3__ {int* ledMode; int counter; scalar_t__ txTraffic; scalar_t__ rxTraffic; } ;
struct TYPE_4__ {TYPE_1__ ledStruct; } ;


 scalar_t__ TRUE ;
 size_t ZM_MAX_LED_NUMBER ;
 TYPE_2__* wd ;
 int zfHpLedCtrl (int *,size_t,int) ;
 scalar_t__ zfPowerSavingMgrIsSleeping (int *) ;
 scalar_t__ zfStaIsConnected (int *) ;
 int zmw_get_wlan_dev (int *) ;

void zfLedCtrlType1(zdev_t* dev)
{
    u16_t i;
    u32_t ton, toff, tmp, period;
    zmw_get_wlan_dev(dev);

    for (i=0; i<ZM_MAX_LED_NUMBER; i++)
    {
        if (zfStaIsConnected(dev) != TRUE)
        {

            ton = ((wd->ledStruct.ledMode[i] & 0xf00) >> 8) * 5;
            toff = ((wd->ledStruct.ledMode[i] & 0xf000) >> 12) * 5;

            if ((ton + toff) != 0)
            {
                tmp = wd->ledStruct.counter / (ton+toff);
                tmp = wd->ledStruct.counter - (tmp * (ton+toff));
                if (tmp < ton)
                {
                    zfHpLedCtrl(dev, i, 1);
                }
                else
                {
                    zfHpLedCtrl(dev, i, 0);
                }
            }
        }
        else
        {
            if ((zfPowerSavingMgrIsSleeping(dev)) && ((wd->ledStruct.ledMode[i] & 0x8) == 0))
            {
                zfHpLedCtrl(dev, i, 0);
            }
            else
            {

                if ((wd->ledStruct.ledMode[i] & 0x40) == 0)
                {
                    if ((wd->ledStruct.counter & 1) == 0)
                    {
                        zfHpLedCtrl(dev, i, (wd->ledStruct.ledMode[i] & 0x10) >> 4);
                    }
                    else
                    {
                        if ((wd->ledStruct.txTraffic > 0) || (wd->ledStruct.rxTraffic > 0))
                        {
                            wd->ledStruct.txTraffic = wd->ledStruct.rxTraffic = 0;
                            if ((wd->ledStruct.ledMode[i] & 0x20) != 0)
                            {
                                zfHpLedCtrl(dev, i, ((wd->ledStruct.ledMode[i] & 0x10) >> 4)^1);
                            }
                        }
                    }
                }
                else
                {
                    period = 5 * (1 << ((wd->ledStruct.ledMode[i] & 0x30) >> 4));
                    tmp = wd->ledStruct.counter / (period*2);
                    tmp = wd->ledStruct.counter - (tmp * (period*2));
                    if (tmp < period)
                    {
                        if ((wd->ledStruct.counter & 1) == 0)
                        {
                            zfHpLedCtrl(dev, i, 0);
                        }
                        else
                        {
                            if ((wd->ledStruct.txTraffic > 0) || (wd->ledStruct.rxTraffic > 0))
                            {
                                wd->ledStruct.txTraffic = wd->ledStruct.rxTraffic = 0;
                                zfHpLedCtrl(dev, i, 1);
                            }
                        }
                    }
                    else
                    {
                        if ((wd->ledStruct.counter & 1) == 0)
                        {
                            zfHpLedCtrl(dev, i, 1);
                        }
                        else
                        {
                            if ((wd->ledStruct.txTraffic > 0) || (wd->ledStruct.rxTraffic > 0))
                            {
                                wd->ledStruct.txTraffic = wd->ledStruct.rxTraffic = 0;
                                zfHpLedCtrl(dev, i, 0);
                            }
                        }
                    }
                }
            }
        }
    }
}

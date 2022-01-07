
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int (* zfpFreqChangeCompleteCb ) (int *) ;
typedef int zdev_t ;
typedef scalar_t__ u8_t ;
typedef int u16_t ;
struct TYPE_3__ {scalar_t__ currentBw40; scalar_t__ currentExtOffset; scalar_t__ flagFreqChanging; int connPowerInHalfDbm; int currentFrequency; } ;
struct TYPE_4__ {TYPE_1__ sta; int frequency; } ;


 int ZM_LV_1 ;
 TYPE_2__* wd ;
 int zfAddFreqChangeReq (int *,int ,scalar_t__,scalar_t__,int (*) (int *)) ;
 int zfHpGetTransmitPower (int *) ;
 int zfHpSetFrequencyEx (int *,int ,scalar_t__,scalar_t__,scalar_t__) ;
 int zfPushVtxq (int *) ;
 scalar_t__ zfStaIsConnected (int *) ;
 int zm_debug_msg0 (char*) ;
 int zm_msg1_scan (int ,char*,int ) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

void zfCoreSetFrequencyExV2(zdev_t* dev, u16_t frequency, u8_t bw40,
        u8_t extOffset, zfpFreqChangeCompleteCb cb, u8_t forceSetFreq)
{
    u8_t setFreqImmed = 0;
    u8_t initRF = 0;
    zmw_get_wlan_dev(dev);
    zmw_declare_for_critical_section();

    zm_msg1_scan(ZM_LV_1, "Freq=", frequency);

    zmw_enter_critical_section(dev);
    if ((wd->sta.currentFrequency == frequency)
        && (wd->sta.currentBw40 == bw40)
        && (wd->sta.currentExtOffset == extOffset))
    {
        if ( forceSetFreq == 0 && wd->sta.flagFreqChanging == 0 )
        {
            goto done;
        }
    }







    zfAddFreqChangeReq(dev, frequency, bw40, extOffset, cb);



    if ( wd->sta.flagFreqChanging == 0 )
    {
        if ((wd->sta.currentBw40 != bw40) || (wd->sta.currentExtOffset != extOffset))
        {
            initRF = 1;
        }
        wd->sta.currentFrequency = frequency;
        wd->sta.currentBw40 = bw40;
        wd->sta.currentExtOffset = extOffset;
        setFreqImmed = 1;
    }
    wd->sta.flagFreqChanging++;

    zmw_leave_critical_section(dev);

    if ( setFreqImmed )
    {

        if ( forceSetFreq )
        {
            zm_debug_msg0("#6_1 20070917");
            zm_debug_msg0("It is happen!!! No error message");
            zfHpSetFrequencyEx(dev, frequency, bw40, extOffset, 2);
        }
        else
        {
        zfHpSetFrequencyEx(dev, frequency, bw40, extOffset, initRF);
        }

        if ( zfStaIsConnected(dev)
             && (frequency == wd->frequency)) {
            wd->sta.connPowerInHalfDbm = zfHpGetTransmitPower(dev);
        }
    }
    return;

done:
    zmw_leave_critical_section(dev);

    if ( cb != ((void*)0) )
    {
        cb(dev);
    }
    zfPushVtxq(dev);
    return;
}

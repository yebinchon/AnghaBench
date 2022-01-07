
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u16_t ;
struct TYPE_3__ {int vapNumber; int apBitmap; } ;
struct TYPE_4__ {int beaconInterval; int* macAddr; int gRateBasic; int bRateBasic; TYPE_1__ ap; } ;


 int ZM_HAL_80211_MODE_AP ;
 int ZM_MAX_AP_SUPPORT ;
 int ZM_MODE_AP ;
 TYPE_2__* wd ;
 int zfHpEnableBeacon (int *,int ,int,int,int ) ;
 int zfHpSetApStaMode (int *,int ) ;
 int zfHpSetBasicRateSet (int *,int ,int ) ;
 int zfHpSetMacAddress (int *,int*,int) ;
 int zfUpdateDefaultQosParameter (int *,int) ;
 int zmw_get_wlan_dev (int *) ;

void zfInitMacApMode(zdev_t* dev)
{
    u16_t i;

    zmw_get_wlan_dev(dev);

    zfHpEnableBeacon(dev, ZM_MODE_AP, (wd->beaconInterval/wd->ap.vapNumber), 1, 0);


    zfHpSetApStaMode(dev, ZM_HAL_80211_MODE_AP);



    if (wd->ap.vapNumber >= 2)
    {
        for (i=1; i<ZM_MAX_AP_SUPPORT; i++)
        {
            if (((wd->ap.apBitmap >> i) & 0x1) != 0)
            {
                u16_t mac[3];
                mac[0] = wd->macAddr[0];
                mac[1] = wd->macAddr[1];



                mac[2] = wd->macAddr[2] + (i<<8);

                zfHpSetMacAddress(dev, mac, i);

            }
        }
    }


    zfHpSetBasicRateSet(dev, wd->bRateBasic, wd->gRateBasic);


    zfUpdateDefaultQosParameter(dev, 1);

    return;
}

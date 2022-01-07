
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
struct TYPE_3__ {scalar_t__ rxBeaconCount; int beaconMissState; int bssid; } ;
struct TYPE_4__ {scalar_t__ wlanMode; int beaconInterval; int tick; TYPE_1__ sta; int ExtOffset; int BandWidth40; int frequency; } ;


 scalar_t__ ZM_MODE_INFRASTRUCTURE ;
 int ZM_MS_PER_TICK ;
 int ZM_STATUS_MEDIA_DISCONNECT_BEACON_MISS ;
 int ZM_WLAN_FRAME_TYPE_DEAUTH ;
 TYPE_2__* wd ;
 int zfCoreSetFrequencyExV2 (int *,int ,int ,int ,int *,int) ;
 int zfSendMmFrame (int *,int ,int ,int,int ,int ) ;
 int zfStaConnectFail (int *,int ,int ,int ) ;
 scalar_t__ zfStaIsConnected (int *) ;
 int zmw_get_wlan_dev (int *) ;

void zfStaCheckRxBeacon(zdev_t* dev)
{
    zmw_get_wlan_dev(dev);

    if (( wd->wlanMode == ZM_MODE_INFRASTRUCTURE ) && (zfStaIsConnected(dev)))
    {
        if (wd->beaconInterval == 0)
        {
            wd->beaconInterval = 100;
        }
        if ( (wd->tick % ((wd->beaconInterval * 10) / ZM_MS_PER_TICK)) == 0 )
        {

            if (wd->sta.rxBeaconCount == 0)
            {
                if (wd->sta.beaconMissState == 1)
                {

             zfSendMmFrame(dev, ZM_WLAN_FRAME_TYPE_DEAUTH, wd->sta.bssid, 3, 0, 0);

                zfStaConnectFail(dev, ZM_STATUS_MEDIA_DISCONNECT_BEACON_MISS,
                        wd->sta.bssid, 0);
                }
                else
                {
                    wd->sta.beaconMissState = 1;

                    zfCoreSetFrequencyExV2(dev, wd->frequency, wd->BandWidth40,
                            wd->ExtOffset, ((void*)0), 1);
                }
            }
            else
            {
                wd->sta.beaconMissState = 0;
            }
            wd->sta.rxBeaconCount = 0;
        }
    }
}

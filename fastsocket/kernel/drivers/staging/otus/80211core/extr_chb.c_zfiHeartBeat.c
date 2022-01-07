
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
struct TYPE_5__ {int ibssSiteSurveyStatus; int ibssReceiveBeaconCount; int ReceivedPacketRateCounter; int ReceivedPktRatePerSecond; int TotalNumberOfReceivePackets; int avgSizeOfReceivePackets; int TotalNumberOfReceiveBytes; scalar_t__ NonNAPcount; int RTSInAGGMode; } ;
struct TYPE_4__ {scalar_t__ cw_enable; } ;
struct TYPE_6__ {int tick; scalar_t__ wlanMode; int tickIbssReceiveBeacon; TYPE_2__ sta; int modeMDKEnable; TYPE_1__ cwm; } ;


 int FALSE ;
 int TRUE ;
 scalar_t__ ZM_MODE_IBSS ;
 TYPE_3__* wd ;
 int zfAgingDefragList (int *,int) ;
 int zfHpCwmUpdate (int *) ;
 int zfHpHeartBeat (int *) ;
 int zfLed100msCtrl (int *) ;
 int zfMmApTimeTick (int *) ;
 int zfMmStaTimeTick (int *) ;
 int zfReSetCurrentFrequency (int *) ;
 int zfReWriteBeaconStartAddress (int *) ;
 scalar_t__ zfStaIsConnected (int *) ;
 int zfiDbgReadTally (int *) ;
 int zm_debug_msg0 (char*) ;
 int zmw_get_wlan_dev (int *) ;

void zfiHeartBeat(zdev_t* dev)
{
    zmw_get_wlan_dev(dev);

    wd->tick++;
    if ((wd->tick & 0xff) == 0)
    {
        zfAgingDefragList(dev, 1);
    }





    if ((wd->tick % 10) == 9)
    {
        zfLed100msCtrl(dev);






    }
    if ( wd->wlanMode == ZM_MODE_IBSS )
    {
        if ( zfStaIsConnected(dev) )
        {
            wd->tickIbssReceiveBeacon++;

            if ( (wd->sta.ibssSiteSurveyStatus == 2) &&
                 (wd->tickIbssReceiveBeacon == 300) &&
                 (wd->sta.ibssReceiveBeaconCount < 3) )
            {
                zm_debug_msg0("It is happen!!! No error message");
                zfReSetCurrentFrequency(dev);
            }
        }
    }

    if(wd->sta.ReceivedPacketRateCounter <= 0)
    {
        wd->sta.ReceivedPktRatePerSecond = wd->sta.TotalNumberOfReceivePackets;

     if (wd->sta.TotalNumberOfReceivePackets != 0)
     {
         wd->sta.avgSizeOfReceivePackets = wd->sta.TotalNumberOfReceiveBytes/wd->sta.TotalNumberOfReceivePackets;
     }
     else
     {
         wd->sta.avgSizeOfReceivePackets = 640;
     }
        wd->sta.TotalNumberOfReceivePackets = 0;
        wd->sta.TotalNumberOfReceiveBytes = 0;
        wd->sta.ReceivedPacketRateCounter = 100;
    }
    else
    {
        wd->sta.ReceivedPacketRateCounter--;
    }


 if((wd->tick & 0x7f) == 0x3f)
 {
  if( wd->sta.NonNAPcount > 0)
  {
   wd->sta.RTSInAGGMode = TRUE;
   wd->sta.NonNAPcount = 0;
  }
  else
  {
   wd->sta.RTSInAGGMode = FALSE;
  }
 }




    zfMmApTimeTick(dev);
    zfMmStaTimeTick(dev);




    zfHpHeartBeat(dev);

}

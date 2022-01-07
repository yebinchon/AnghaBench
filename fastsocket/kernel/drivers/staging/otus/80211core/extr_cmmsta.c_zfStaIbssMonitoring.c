
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
typedef scalar_t__ u8_t ;
typedef scalar_t__ u16_t ;
struct zsPartnerNotifyEvent {int peerMacAddr; int bssid; } ;
struct TYPE_5__ {scalar_t__ oppositeCount; TYPE_1__* oppositeInfo; scalar_t__ bssid; scalar_t__ bChannelScan; } ;
struct TYPE_6__ {int (* zfcbIbssPartnerNotify ) (int *,int ,struct zsPartnerNotifyEvent*) ;TYPE_2__ sta; } ;
struct TYPE_4__ {scalar_t__ valid; scalar_t__ aliveCounter; scalar_t__* macAddr; } ;


 int ZM_EVENT_IBSS_MONITOR ;
 scalar_t__ ZM_IBSS_PEER_ALIVE_COUNTER ;
 scalar_t__ ZM_MAX_OPPOSITE_COUNT ;
 int ZM_TICK_IBSS_MONITOR ;
 int ZM_WLAN_FRAME_TYPE_PROBEREQ ;
 int stub1 (int *,int ,struct zsPartnerNotifyEvent*) ;
 TYPE_3__* wd ;
 int zfMemoryCopy (int ,scalar_t__*,int) ;
 int zfSendMmFrame (int *,int ,scalar_t__*,int,int ,int ) ;
 int zfTimerSchedule (int *,int ,int ) ;
 int zm_debug_msg0 (char*) ;
 int zm_debug_msg1 (char*,scalar_t__) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

void zfStaIbssMonitoring(zdev_t* dev, u8_t reset)
{
    u16_t i;
    u16_t oppositeCount;
    struct zsPartnerNotifyEvent event;

    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();



    zmw_enter_critical_section(dev);

    if ( wd->sta.oppositeCount == 0 )
    {
        goto done;
    }

    if ( wd->sta.bChannelScan )
    {
        goto done;
    }

    oppositeCount = wd->sta.oppositeCount;

    for(i=0; i < ZM_MAX_OPPOSITE_COUNT; i++)
    {
        if ( oppositeCount == 0 )
        {
            break;
        }

        if ( reset )
        {
            wd->sta.oppositeInfo[i].valid = 0;
        }

        if ( wd->sta.oppositeInfo[i].valid == 0 )
        {
            continue;
        }

        oppositeCount--;

        if ( wd->sta.oppositeInfo[i].aliveCounter )
        {
            zm_debug_msg1("Setting alive to ", wd->sta.oppositeInfo[i].aliveCounter);

            zmw_leave_critical_section(dev);

            if ( wd->sta.oppositeInfo[i].aliveCounter != ZM_IBSS_PEER_ALIVE_COUNTER )
            {
                zfSendMmFrame(dev, ZM_WLAN_FRAME_TYPE_PROBEREQ,
                              (u16_t*)wd->sta.oppositeInfo[i].macAddr, 1, 0, 0);
            }

            zmw_enter_critical_section(dev);
            wd->sta.oppositeInfo[i].aliveCounter--;
        }
        else
        {
            zm_debug_msg0("zfStaIbssMonitoring remove the peer station");
            zfMemoryCopy(event.bssid, (u8_t *)(wd->sta.bssid), 6);
            zfMemoryCopy(event.peerMacAddr, wd->sta.oppositeInfo[i].macAddr, 6);

            wd->sta.oppositeInfo[i].valid = 0;
            wd->sta.oppositeCount--;
            if (wd->zfcbIbssPartnerNotify != ((void*)0))
            {
                zmw_leave_critical_section(dev);
                wd->zfcbIbssPartnerNotify(dev, 0, &event);
                zmw_enter_critical_section(dev);
            }
        }
    }

done:
    if ( reset == 0 )
    {
        zfTimerSchedule(dev, ZM_EVENT_IBSS_MONITOR, ZM_TICK_IBSS_MONITOR);
    }

    zmw_leave_critical_section(dev);
}

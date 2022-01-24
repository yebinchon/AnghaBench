#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zdev_t ;
typedef  scalar_t__ u8_t ;
typedef  scalar_t__ u16_t ;
struct zsPartnerNotifyEvent {int /*<<< orphan*/  peerMacAddr; int /*<<< orphan*/  bssid; } ;
struct TYPE_5__ {scalar_t__ oppositeCount; TYPE_1__* oppositeInfo; scalar_t__ bssid; scalar_t__ bChannelScan; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* zfcbIbssPartnerNotify ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct zsPartnerNotifyEvent*) ;TYPE_2__ sta; } ;
struct TYPE_4__ {scalar_t__ valid; scalar_t__ aliveCounter; scalar_t__* macAddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZM_EVENT_IBSS_MONITOR ; 
 scalar_t__ ZM_IBSS_PEER_ALIVE_COUNTER ; 
 scalar_t__ ZM_MAX_OPPOSITE_COUNT ; 
 int /*<<< orphan*/  ZM_TICK_IBSS_MONITOR ; 
 int /*<<< orphan*/  ZM_WLAN_FRAME_TYPE_PROBEREQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct zsPartnerNotifyEvent*) ; 
 TYPE_3__* wd ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(zdev_t* dev, u8_t reset)
{
    u16_t i;
    u16_t oppositeCount;
    struct zsPartnerNotifyEvent event;

    FUNC8(dev);

    FUNC6();

    //zm_debug_msg1("zfStaIbssMonitoring %d", wd->sta.oppositeCount);

    FUNC7(dev);

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
            FUNC5("Setting alive to ", wd->sta.oppositeInfo[i].aliveCounter);

            FUNC9(dev);

            if ( wd->sta.oppositeInfo[i].aliveCounter != ZM_IBSS_PEER_ALIVE_COUNTER )
            {
                FUNC2(dev, ZM_WLAN_FRAME_TYPE_PROBEREQ,
                              (u16_t*)wd->sta.oppositeInfo[i].macAddr, 1, 0, 0);
            }

            FUNC7(dev);
            wd->sta.oppositeInfo[i].aliveCounter--;
        }
        else
        {
            FUNC4("zfStaIbssMonitoring remove the peer station");
            FUNC1(event.bssid, (u8_t *)(wd->sta.bssid), 6);
            FUNC1(event.peerMacAddr, wd->sta.oppositeInfo[i].macAddr, 6);

            wd->sta.oppositeInfo[i].valid = 0;
            wd->sta.oppositeCount--;
            if (wd->zfcbIbssPartnerNotify != NULL)
            {
                FUNC9(dev);
                wd->zfcbIbssPartnerNotify(dev, 0, &event);
                FUNC7(dev);
            }
        }
    }

done:
    if ( reset == 0 )
    {
        FUNC3(dev, ZM_EVENT_IBSS_MONITOR, ZM_TICK_IBSS_MONITOR);
    }

    FUNC9(dev);
}
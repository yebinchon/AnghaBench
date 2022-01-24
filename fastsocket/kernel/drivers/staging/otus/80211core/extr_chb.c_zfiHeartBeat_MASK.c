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
struct TYPE_5__ {int ibssSiteSurveyStatus; int ibssReceiveBeaconCount; int ReceivedPacketRateCounter; int ReceivedPktRatePerSecond; int TotalNumberOfReceivePackets; int avgSizeOfReceivePackets; int TotalNumberOfReceiveBytes; scalar_t__ NonNAPcount; int /*<<< orphan*/  RTSInAGGMode; } ;
struct TYPE_4__ {scalar_t__ cw_enable; } ;
struct TYPE_6__ {int tick; scalar_t__ wlanMode; int tickIbssReceiveBeacon; TYPE_2__ sta; int /*<<< orphan*/  modeMDKEnable; TYPE_1__ cwm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ ZM_MODE_IBSS ; 
 TYPE_3__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void FUNC12(zdev_t* dev)
{
    FUNC11(dev);

    wd->tick++;

#if 0
    /* => every 1.28 seconds */
    if (wd->cwm.cw_enable && ((wd->tick & 0x7f) == 0x3f))
    {
        zfHpCwmUpdate(dev);
    }
#endif
    /* => every 2.56 seconds */
    if ((wd->tick & 0xff) == 0)
    {
        FUNC0(dev, 1);
    }

    /* Watch Dog */
    //zfWatchDog();

    /* LED Control (per 100ms) */
    if ((wd->tick % 10) == 9)
    {
        FUNC3(dev);
#ifdef ZM_ENABLE_BA_RATECTRL
        if (!wd->modeMDKEnable)
        {
            zfiDbgReadTally(dev);
        }
#endif
    }

#ifdef ZM_ENABLE_REWRITE_BEACON_START_ADDRESS
    if ( wd->wlanMode == ZM_MODE_IBSS )
    {
        if ( zfStaIsConnected(dev) )
        {
            zfReWriteBeaconStartAddress(dev);
        }
    }
#endif

    if ( wd->wlanMode == ZM_MODE_IBSS )
    {
        if ( FUNC8(dev) )
        {
            wd->tickIbssReceiveBeacon++;  // add 10ms

            if ( (wd->sta.ibssSiteSurveyStatus == 2) &&
                 (wd->tickIbssReceiveBeacon == 300) &&
                 (wd->sta.ibssReceiveBeaconCount < 3) )
            {
                FUNC10("It is happen!!! No error message");
                FUNC6(dev);
            }
        }
    }

    if(wd->sta.ReceivedPacketRateCounter <= 0)
    {
        wd->sta.ReceivedPktRatePerSecond = wd->sta.TotalNumberOfReceivePackets;
	//zm_debug_msg1("Receive Packet Per Second  = ", wd->sta.ReceivedPktRatePerSecond);
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
        wd->sta.ReceivedPacketRateCounter = 100; /*for another 1s*/
    }
    else
    {
        wd->sta.ReceivedPacketRateCounter--;
    }

	/* => every 1.28 seconds */
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



    /* Maintain management time tick */
    FUNC4(dev);
    FUNC5(dev);

    //zfPhyCrTuning(dev);

    //zfTxPowerControl(dev);
    FUNC2(dev);

}
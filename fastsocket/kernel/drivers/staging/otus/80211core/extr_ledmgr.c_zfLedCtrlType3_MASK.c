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
struct TYPE_5__ {int counter; int* ledMode; scalar_t__ txTraffic; scalar_t__ rxTraffic; } ;
struct TYPE_4__ {scalar_t__ bChannelScan; scalar_t__ bAutoReconnect; } ;
struct TYPE_6__ {scalar_t__ state; TYPE_2__ ledStruct; TYPE_1__ sta; } ;

/* Variables and functions */
 scalar_t__ TRUE ; 
 scalar_t__ ZM_WLAN_STATE_DISABLED ; 
 TYPE_3__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(zdev_t* dev)
{
    FUNC4(dev);

    if (FUNC3(dev) != TRUE)
    {
        // Disconnect state
        if(wd->ledStruct.counter % 2 != 0)
    	{
      	    // Update LED each 200ms(2*100)
      	    // Prevent this situation
            //              ___     _
            // LED[0] ON   |   |   |x|
            // ------ OFF->+-+-+-+-+-+-+->>>...
            //
            return;
        }

        if (((wd->state == ZM_WLAN_STATE_DISABLED) && (wd->sta.bChannelScan))
            || ((wd->state != ZM_WLAN_STATE_DISABLED) && (wd->sta.bAutoReconnect)))
        {
            // Scan/AutoReconnect state
            FUNC1(dev, 0);
        }
        else
        {
            // Neither Connected nor Scan
            FUNC0(dev, 0, 0);
            FUNC0(dev, 1, 0);
        }
    }
    else
    {
        if( wd->sta.bChannelScan )
        {
            // Scan state
            if(wd->ledStruct.counter % 2 != 0)
                return;
            FUNC1(dev, 1);
            return;
        }

        if ((FUNC2(dev)) && ((wd->ledStruct.ledMode[0] & 0x8) == 0))
        {
            // If Sleeping, turn OFF
            FUNC0(dev, 0, 0);
            FUNC0(dev, 1, 0);
        }
        else
        {
            //Connect state
            if ((wd->ledStruct.counter & 1) == 0)   // even
            {
                // No traffic, always ON
                FUNC0(dev, 0, 1);
                FUNC0(dev, 1, 1);
            }
            else       // odd
            {
                if ((wd->ledStruct.txTraffic > 0) || (wd->ledStruct.rxTraffic > 0))
                {
                    // If have traffic, turn OFF
		            //                   _____   _   _   _   _____
		            // LED[Operate] ON        | | | | | | | |
		            // ------------ OFF->-+-+-+-+-+-+-+-+-+-+-+-+-+->>>...
		            //
                    wd->ledStruct.txTraffic = wd->ledStruct.rxTraffic = 0;
                    FUNC0(dev, 0, 0);
                    FUNC0(dev, 1, 0);
                }
            }
        }
    }
}
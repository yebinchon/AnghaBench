#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zdev_t ;
typedef  int u8_t ;
struct TYPE_3__ {int adapterState; void* bChannelScan; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;

/* Variables and functions */
 void* FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  ZM_DEFAULT_SUPPORT_RATE_DISCONNECT ; 
 int /*<<< orphan*/  ZM_SCAN_MGR_SCAN_INTERNAL ; 
#define  ZM_STA_STATE_CONNECTED 130 
#define  ZM_STA_STATE_CONNECTING 129 
#define  ZM_STA_STATE_DISCONNECT 128 
 TYPE_2__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

u8_t FUNC7(zdev_t* dev, u8_t newState)
{
    u8_t ret = TRUE;

    FUNC5(dev);

    FUNC3();

    //if ( newState == wd->sta.adapterState )
    //{
    //    return FALSE;
    //}

    switch(newState)
    {
    case ZM_STA_STATE_DISCONNECT:
        FUNC0(dev, ZM_DEFAULT_SUPPORT_RATE_DISCONNECT);

        #if 1
            FUNC1(dev, ZM_SCAN_MGR_SCAN_INTERNAL);
        #else
            if ( wd->sta.bChannelScan )
            {
                /* stop the action of channel scanning */
                wd->sta.bChannelScan = FALSE;
                ret =  TRUE;
                break;
            }
        #endif

        break;
    case ZM_STA_STATE_CONNECTING:
        #if 1
            FUNC1(dev, ZM_SCAN_MGR_SCAN_INTERNAL);
        #else
            if ( wd->sta.bChannelScan )
            {
                /* stop the action of channel scanning */
                wd->sta.bChannelScan = FALSE;
                ret =  TRUE;
                break;
            }
        #endif

        break;
    case ZM_STA_STATE_CONNECTED:
        break;
    default:
        break;
    }

    //if ( ret )
    //{
        FUNC4(dev);
        wd->sta.adapterState = newState;
        FUNC6(dev);

        FUNC2("change adapter state = ", newState);
    //}

    return ret;
}
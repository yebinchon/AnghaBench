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
typedef  size_t u8_t ;
typedef  int u16_t ;
struct TYPE_3__ {int /*<<< orphan*/  bssid; int /*<<< orphan*/  bAutoReconnect; int /*<<< orphan*/  cmDisallowSsidLength; int /*<<< orphan*/  cmMicFailureCount; } ;
struct TYPE_4__ {int addbaCount; int TKIP_Group_KeyChanging; TYPE_1__ sta; int /*<<< orphan*/  addbaComplete; int /*<<< orphan*/  (* zfcbConnectNotify ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 size_t FALSE ; 
 size_t TRUE ; 
#define  ZM_EVENT_CM_BLOCK_TIMER 137 
#define  ZM_EVENT_CM_DISCONNECT 136 
#define  ZM_EVENT_CM_TIMER 135 
#define  ZM_EVENT_IBSS_MONITOR 134 
#define  ZM_EVENT_IN_SCAN 133 
#define  ZM_EVENT_SCAN 132 
#define  ZM_EVENT_SKIP_COUNTERMEASURE 131 
#define  ZM_EVENT_TIMEOUT_ADDBA 130 
#define  ZM_EVENT_TIMEOUT_PERFORMANCE 129 
#define  ZM_EVENT_TIMEOUT_SCAN 128 
 int /*<<< orphan*/  ZM_LV_0 ; 
 int /*<<< orphan*/  ZM_SCAN_MGR_SCAN_INTERNAL ; 
 int /*<<< orphan*/  ZM_STATUS_MEDIA_DISCONNECT_MIC_FAIL ; 
 int /*<<< orphan*/  ZM_STA_STATE_DISCONNECT ; 
 int ZM_TICK_CM_BLOCK_TIMEOUT ; 
 int ZM_TICK_CM_BLOCK_TIMEOUT_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* wd ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int const) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int const,int) ; 
 int /*<<< orphan*/  FUNC12 (size_t*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

void FUNC20(zdev_t* dev, u16_t* eventArray, u8_t eventCount)
{
    u8_t i, j, bypass = FALSE;
    u16_t eventBypass[32];
    u8_t eventBypassCount = 0;

    FUNC18(dev);

    FUNC16();

    FUNC12((u8_t*) eventBypass, 64);

    for( i=0; i<eventCount; i++ )
    {
        for( j=0; j<eventBypassCount; j++ )
        {
            if ( eventBypass[j] == eventArray[i] )
            {
                bypass = TRUE;
                break;
            }
        }

        if ( bypass )
        {
            continue;
        }

        switch( eventArray[i] )
        {
            case ZM_EVENT_SCAN:
                {
                    FUNC5(dev);
                    eventBypass[eventBypassCount++] = ZM_EVENT_IN_SCAN;
                    eventBypass[eventBypassCount++] = ZM_EVENT_TIMEOUT_SCAN;
                }
                break;

            case ZM_EVENT_TIMEOUT_SCAN:
                {
                    u8_t res;

                    res = FUNC6(dev);
                    if ( res == 0 )
                    {
                        eventBypass[eventBypassCount++] = ZM_EVENT_TIMEOUT_SCAN;
                    }
                    else if ( res == 1 )
                    {
                        eventBypass[eventBypassCount++] = ZM_EVENT_IN_SCAN;
                    }
                }
                break;

            case ZM_EVENT_IBSS_MONITOR:
                {
                    FUNC9(dev, 0);
                }
                break;

            case ZM_EVENT_IN_SCAN:
                {
                    FUNC4(dev);
                }
                break;

            case ZM_EVENT_CM_TIMER:
                {
                    FUNC15(ZM_LV_0, "ZM_EVENT_CM_TIMER");

                    wd->sta.cmMicFailureCount = 0;
                }
                break;

            case ZM_EVENT_CM_DISCONNECT:
                {
                    FUNC15(ZM_LV_0, "ZM_EVENT_CM_DISCONNECT");

                    FUNC2(dev, ZM_STA_STATE_DISCONNECT);

                    FUNC17(dev);
                    //zfTimerSchedule(dev, ZM_EVENT_CM_BLOCK_TIMER,
                    //                ZM_TICK_CM_BLOCK_TIMEOUT);

                    /* Timer Resolution on WinXP is 15/16 ms  */
                    /* Decrease Time offset for <XP> Counter Measure */
                    FUNC11(dev, ZM_EVENT_CM_BLOCK_TIMER,
                                         ZM_TICK_CM_BLOCK_TIMEOUT - ZM_TICK_CM_BLOCK_TIMEOUT_OFFSET);

                    FUNC19(dev);
                    wd->sta.cmMicFailureCount = 0;
                    //zfiWlanDisable(dev);
                    FUNC3(dev);
                    if (wd->zfcbConnectNotify != NULL)
                    {
                        wd->zfcbConnectNotify(dev, ZM_STATUS_MEDIA_DISCONNECT_MIC_FAIL,
                             wd->sta.bssid);
                    }
                }
                break;

            case ZM_EVENT_CM_BLOCK_TIMER:
                {
                    FUNC15(ZM_LV_0, "ZM_EVENT_CM_BLOCK_TIMER");

                    //zmw_enter_critical_section(dev);
                    wd->sta.cmDisallowSsidLength = 0;
                    if ( wd->sta.bAutoReconnect )
                    {
                        FUNC15(ZM_LV_0, "ZM_EVENT_CM_BLOCK_TIMER:bAutoReconnect!=0");
                        FUNC8(dev, ZM_SCAN_MGR_SCAN_INTERNAL);
                        FUNC7(dev, ZM_SCAN_MGR_SCAN_INTERNAL);
                    }
                    //zmw_leave_critical_section(dev);
                }
                break;

            case ZM_EVENT_TIMEOUT_ADDBA:
                {
                    if (!wd->addbaComplete && (wd->addbaCount < 5))
                    {
                        FUNC1(dev, wd->sta.bssid, 0, 0);
                        wd->addbaCount++;
                        FUNC11(dev, ZM_EVENT_TIMEOUT_ADDBA, 100);
                    }
                    else
                    {
                        FUNC10(dev, ZM_EVENT_TIMEOUT_ADDBA);
                    }
                }
                break;

            #ifdef ZM_ENABLE_PERFORMANCE_EVALUATION
            case ZM_EVENT_TIMEOUT_PERFORMANCE:
                {
                    zfiPerformanceRefresh(dev);
                }
                break;
            #endif
            case ZM_EVENT_SKIP_COUNTERMEASURE:
				//enable the Countermeasure
				{
					FUNC14("Countermeasure : Enable MIC Check ");
					wd->TKIP_Group_KeyChanging = 0x0;
				}
				break;

            default:
                break;
        }
    }
}
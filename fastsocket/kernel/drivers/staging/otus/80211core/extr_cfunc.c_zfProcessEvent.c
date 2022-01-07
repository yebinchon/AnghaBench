
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef size_t u8_t ;
typedef int u16_t ;
struct TYPE_3__ {int bssid; int bAutoReconnect; int cmDisallowSsidLength; int cmMicFailureCount; } ;
struct TYPE_4__ {int addbaCount; int TKIP_Group_KeyChanging; TYPE_1__ sta; int addbaComplete; int (* zfcbConnectNotify ) (int *,int ,int ) ;} ;


 size_t FALSE ;
 size_t TRUE ;
 int ZM_LV_0 ;
 int ZM_SCAN_MGR_SCAN_INTERNAL ;
 int ZM_STATUS_MEDIA_DISCONNECT_MIC_FAIL ;
 int ZM_STA_STATE_DISCONNECT ;
 int ZM_TICK_CM_BLOCK_TIMEOUT ;
 int ZM_TICK_CM_BLOCK_TIMEOUT_OFFSET ;
 int stub1 (int *,int ,int ) ;
 TYPE_2__* wd ;
 int zfAggSendAddbaRequest (int *,int ,int ,int ) ;
 int zfChangeAdapterState (int *,int ) ;
 int zfHpResetKeyCache (int *) ;
 int zfScanMgrScanEventRetry (int *) ;
 int zfScanMgrScanEventStart (int *) ;
 size_t zfScanMgrScanEventTimeout (int *) ;
 int zfScanMgrScanStart (int *,int ) ;
 int zfScanMgrScanStop (int *,int ) ;
 int zfStaIbssMonitoring (int *,int ) ;
 int zfTimerCancel (int *,int const) ;
 int zfTimerSchedule (int *,int const,int) ;
 int zfZeroMemory (size_t*,int) ;
 int zfiPerformanceRefresh (int *) ;
 int zm_debug_msg0 (char*) ;
 int zm_msg0_mm (int ,char*) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

void zfProcessEvent(zdev_t* dev, u16_t* eventArray, u8_t eventCount)
{
    u8_t i, j, bypass = FALSE;
    u16_t eventBypass[32];
    u8_t eventBypassCount = 0;

    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();

    zfZeroMemory((u8_t*) eventBypass, 64);

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
            case 132:
                {
                    zfScanMgrScanEventStart(dev);
                    eventBypass[eventBypassCount++] = 133;
                    eventBypass[eventBypassCount++] = 128;
                }
                break;

            case 128:
                {
                    u8_t res;

                    res = zfScanMgrScanEventTimeout(dev);
                    if ( res == 0 )
                    {
                        eventBypass[eventBypassCount++] = 128;
                    }
                    else if ( res == 1 )
                    {
                        eventBypass[eventBypassCount++] = 133;
                    }
                }
                break;

            case 134:
                {
                    zfStaIbssMonitoring(dev, 0);
                }
                break;

            case 133:
                {
                    zfScanMgrScanEventRetry(dev);
                }
                break;

            case 135:
                {
                    zm_msg0_mm(ZM_LV_0, "ZM_EVENT_CM_TIMER");

                    wd->sta.cmMicFailureCount = 0;
                }
                break;

            case 136:
                {
                    zm_msg0_mm(ZM_LV_0, "ZM_EVENT_CM_DISCONNECT");

                    zfChangeAdapterState(dev, ZM_STA_STATE_DISCONNECT);

                    zmw_enter_critical_section(dev);





                    zfTimerSchedule(dev, 137,
                                         ZM_TICK_CM_BLOCK_TIMEOUT - ZM_TICK_CM_BLOCK_TIMEOUT_OFFSET);

                    zmw_leave_critical_section(dev);
                    wd->sta.cmMicFailureCount = 0;

                    zfHpResetKeyCache(dev);
                    if (wd->zfcbConnectNotify != ((void*)0))
                    {
                        wd->zfcbConnectNotify(dev, ZM_STATUS_MEDIA_DISCONNECT_MIC_FAIL,
                             wd->sta.bssid);
                    }
                }
                break;

            case 137:
                {
                    zm_msg0_mm(ZM_LV_0, "ZM_EVENT_CM_BLOCK_TIMER");


                    wd->sta.cmDisallowSsidLength = 0;
                    if ( wd->sta.bAutoReconnect )
                    {
                        zm_msg0_mm(ZM_LV_0, "ZM_EVENT_CM_BLOCK_TIMER:bAutoReconnect!=0");
                        zfScanMgrScanStop(dev, ZM_SCAN_MGR_SCAN_INTERNAL);
                        zfScanMgrScanStart(dev, ZM_SCAN_MGR_SCAN_INTERNAL);
                    }

                }
                break;

            case 130:
                {
                    if (!wd->addbaComplete && (wd->addbaCount < 5))
                    {
                        zfAggSendAddbaRequest(dev, wd->sta.bssid, 0, 0);
                        wd->addbaCount++;
                        zfTimerSchedule(dev, 130, 100);
                    }
                    else
                    {
                        zfTimerCancel(dev, 130);
                    }
                }
                break;
            case 131:

    {
     zm_debug_msg0("Countermeasure : Enable MIC Check ");
     wd->TKIP_Group_KeyChanging = 0x0;
    }
    break;

            default:
                break;
        }
    }
}

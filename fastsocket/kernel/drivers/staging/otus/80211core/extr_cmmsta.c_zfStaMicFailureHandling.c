
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u8_t ;
struct TYPE_3__ {scalar_t__ wpaState; int cmMicFailureCount; int bssid; int ssidLen; int ssid; int cmDisallowSsid; int cmDisallowSsidLength; } ;
struct TYPE_4__ {TYPE_1__ sta; int (* zfcbMicFailureNotify ) (int *,int ,int ) ;} ;


 int ZM_EVENT_CM_DISCONNECT ;
 int ZM_EVENT_CM_TIMER ;
 int ZM_MIC_GROUP_ERROR ;
 int ZM_MIC_PAIRWISE_ERROR ;
 scalar_t__ ZM_STA_WPA_STATE_PK_OK ;
 scalar_t__ ZM_TICK_CM_DISCONNECT ;
 scalar_t__ ZM_TICK_CM_DISCONNECT_OFFSET ;
 scalar_t__ ZM_TICK_CM_TIMEOUT ;
 scalar_t__ ZM_TICK_CM_TIMEOUT_OFFSET ;
 int ZM_WLAN_HEADER_A1_OFFSET ;
 int stub1 (int *,int ,int ) ;
 int stub2 (int *,int ,int ) ;
 TYPE_2__* wd ;
 int zfMemoryCopy (int ,int ,int ) ;
 int zfTimerCancel (int *,int ) ;
 int zfTimerSchedule (int *,int ,scalar_t__) ;
 int zm_debug_msg0 (char*) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;
 int zmw_rx_buf_readb (int *,int *,int ) ;

void zfStaMicFailureHandling(zdev_t* dev, zbuf_t* buf)
{
    u8_t da0;
    u8_t micNotify = 1;

    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();

    if ( wd->sta.wpaState < ZM_STA_WPA_STATE_PK_OK )
    {
        return;
    }

    zmw_enter_critical_section(dev);

    wd->sta.cmMicFailureCount++;

    if ( wd->sta.cmMicFailureCount == 1 )
    {
        zm_debug_msg0("get the first MIC failure");




        zfTimerSchedule(dev, ZM_EVENT_CM_TIMER, ZM_TICK_CM_TIMEOUT - ZM_TICK_CM_TIMEOUT_OFFSET);
    }
    else if ( wd->sta.cmMicFailureCount == 2 )
    {
        zm_debug_msg0("get the second MIC failure");

        wd->sta.cmDisallowSsidLength = wd->sta.ssidLen;
        zfMemoryCopy(wd->sta.cmDisallowSsid, wd->sta.ssid, wd->sta.ssidLen);

        zfTimerCancel(dev, ZM_EVENT_CM_TIMER);




        zfTimerSchedule(dev, ZM_EVENT_CM_DISCONNECT, ZM_TICK_CM_DISCONNECT - ZM_TICK_CM_DISCONNECT_OFFSET);
    }
    else
    {
        micNotify = 0;
    }

    zmw_leave_critical_section(dev);

    if (micNotify == 1)
    {
        da0 = zmw_rx_buf_readb(dev, buf, ZM_WLAN_HEADER_A1_OFFSET);
        if ( da0 & 0x01 )
        {
            if (wd->zfcbMicFailureNotify != ((void*)0))
            {
                wd->zfcbMicFailureNotify(dev, wd->sta.bssid, ZM_MIC_GROUP_ERROR);
            }
        }
        else
        {
            if (wd->zfcbMicFailureNotify != ((void*)0))
            {
                wd->zfcbMicFailureNotify(dev, wd->sta.bssid, ZM_MIC_PAIRWISE_ERROR);
            }
        }
    }
}

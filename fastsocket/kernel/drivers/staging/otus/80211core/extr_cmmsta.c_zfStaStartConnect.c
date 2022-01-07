
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef scalar_t__ u8_t ;
typedef int u32_t ;
struct TYPE_3__ {int bssid; scalar_t__ connectState; int connectTimer; scalar_t__ leapEnabled; } ;
struct TYPE_4__ {TYPE_1__ sta; int tick; } ;


 int ZM_AUTH_ALGO_LEAP ;
 int ZM_AUTH_ALGO_OPEN_SYSTEM ;
 int ZM_AUTH_ALGO_SHARED_KEY ;
 scalar_t__ ZM_STA_CONN_STATE_AUTH_OPEN ;
 scalar_t__ ZM_STA_CONN_STATE_AUTH_SHARE_1 ;
 int ZM_WLAN_FRAME_TYPE_AUTH ;
 TYPE_2__* wd ;
 int zfSendMmFrame (int *,int ,int ,int,int,int ) ;
 int zm_debug_msg0 (char*) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

void zfStaStartConnect(zdev_t* dev, u8_t bIsSharedKey)
{
    u32_t p1, p2;
    u8_t newConnState;

    zmw_get_wlan_dev(dev);
    zmw_declare_for_critical_section();


    if ( bIsSharedKey )
    {

        newConnState = ZM_STA_CONN_STATE_AUTH_SHARE_1;
        zm_debug_msg0("ZM_STA_CONN_STATE_AUTH_SHARE_1");
        p1 = ZM_AUTH_ALGO_SHARED_KEY;
    }
    else
    {

        newConnState = ZM_STA_CONN_STATE_AUTH_OPEN;
        zm_debug_msg0("ZM_STA_CONN_STATE_AUTH_OPEN");
        if( wd->sta.leapEnabled )
            p1 = ZM_AUTH_ALGO_LEAP;
        else
            p1 = ZM_AUTH_ALGO_OPEN_SYSTEM;
    }


    p2 = 0x0;

    zmw_enter_critical_section(dev);
    wd->sta.connectTimer = wd->tick;
    wd->sta.connectState = newConnState;
    zmw_leave_critical_section(dev);


    zfSendMmFrame(dev, ZM_WLAN_FRAME_TYPE_AUTH, wd->sta.bssid, p1, p2, 0);

    return;
}

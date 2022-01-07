
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
struct TYPE_3__ {scalar_t__ connectState; scalar_t__ connectTimer; int failCntOfReasso; scalar_t__ authMode; int bssid; int connectTimeoutCount; scalar_t__ connectByReasso; } ;
struct TYPE_4__ {scalar_t__ wlanMode; scalar_t__ tick; TYPE_1__ sta; } ;


 scalar_t__ FALSE ;
 scalar_t__ ZM_AUTH_MODE_AUTO ;
 scalar_t__ ZM_INTERVAL_CONNECT_TIMEOUT ;
 scalar_t__ ZM_MODE_INFRASTRUCTURE ;
 int ZM_STATUS_MEDIA_DISCONNECT_TIMEOUT ;
 scalar_t__ ZM_STA_CONN_STATE_ASSOCIATE ;
 scalar_t__ ZM_STA_CONN_STATE_AUTH_OPEN ;
 scalar_t__ ZM_STA_CONN_STATE_AUTH_SHARE_1 ;
 scalar_t__ ZM_STA_CONN_STATE_AUTH_SHARE_2 ;
 scalar_t__ ZM_STA_CONN_STATE_NONE ;
 TYPE_2__* wd ;
 int zfStaConnectFail (int *,int ,int ,int) ;
 int zfStaIsConnecting (int *) ;
 int zm_debug_msg1 (char*,scalar_t__) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

void zfStaCheckConnectTimeout(zdev_t* dev)
{
    zmw_get_wlan_dev(dev);
    zmw_declare_for_critical_section();

    if ( wd->wlanMode != ZM_MODE_INFRASTRUCTURE )
    {
        return;
    }

    if ( !zfStaIsConnecting(dev) )
    {
        return;
    }

    zmw_enter_critical_section(dev);
    if ( (wd->sta.connectState == ZM_STA_CONN_STATE_AUTH_OPEN)||
         (wd->sta.connectState == ZM_STA_CONN_STATE_AUTH_SHARE_1)||
         (wd->sta.connectState == ZM_STA_CONN_STATE_AUTH_SHARE_2)||
         (wd->sta.connectState == ZM_STA_CONN_STATE_ASSOCIATE) )
    {
        if ( (wd->tick - wd->sta.connectTimer) > ZM_INTERVAL_CONNECT_TIMEOUT )
        {
            if ( wd->sta.connectByReasso )
            {
                wd->sta.failCntOfReasso++;
                if ( wd->sta.failCntOfReasso > 2 )
                {
                    wd->sta.connectByReasso = FALSE;
                }
            }

            wd->sta.connectState = ZM_STA_CONN_STATE_NONE;
            zm_debug_msg1("connect timeout, state = ", wd->sta.connectState);

            goto failed;
        }
    }

    zmw_leave_critical_section(dev);
    return;

failed:
    zmw_leave_critical_section(dev);
    if(wd->sta.authMode == ZM_AUTH_MODE_AUTO)
 {
            wd->sta.connectTimeoutCount++;
 }
    zfStaConnectFail(dev, ZM_STATUS_MEDIA_DISCONNECT_TIMEOUT, wd->sta.bssid, 2);
    return;
}

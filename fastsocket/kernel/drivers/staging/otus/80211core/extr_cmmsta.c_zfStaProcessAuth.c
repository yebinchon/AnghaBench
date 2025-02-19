
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u8_t ;
typedef int u32_t ;
typedef int u16_t ;
struct zsWlanAuthFrameHeader {int status; int seq; int algo; scalar_t__* challengeText; } ;
struct TYPE_3__ {scalar_t__ connectState; scalar_t__ authMode; int bIsSharedKey; int bssid; int connectTimer; int challengeText; scalar_t__ connectByReasso; } ;
struct TYPE_4__ {TYPE_1__ sta; int tick; int ExtOffset; int BandWidth40; int frequency; } ;


 scalar_t__ ZM_AUTH_MODE_AUTO ;
 int ZM_STATUS_MEDIA_DISCONNECT_AUTH_FAILED ;
 scalar_t__ ZM_STA_CONN_STATE_ASSOCIATE ;
 scalar_t__ ZM_STA_CONN_STATE_AUTH_COMPLETED ;
 scalar_t__ ZM_STA_CONN_STATE_AUTH_OPEN ;
 scalar_t__ ZM_STA_CONN_STATE_AUTH_SHARE_1 ;
 scalar_t__ ZM_STA_CONN_STATE_AUTH_SHARE_2 ;
 int ZM_WLAN_FRAME_TYPE_ASOCREQ ;
 int ZM_WLAN_FRAME_TYPE_AUTH ;
 int ZM_WLAN_FRAME_TYPE_REASOCREQ ;
 TYPE_2__* wd ;
 int * zfAuthFreqCompleteCb ;
 int zfCopyFromRxBuffer (int *,int *,int *,int ,int) ;
 int zfCoreSetFrequencyEx (int *,int ,int ,int ,int *) ;
 int zfMemoryCopy (int ,scalar_t__*,scalar_t__) ;
 int zfSendMmFrame (int *,int ,int ,int,int,int ) ;
 int zfStaConnectFail (int *,int ,int ,int) ;
 int zfStaIsConnecting (int *) ;
 int zfStaStartConnect (int *,int) ;
 int zm_debug_msg0 (char*) ;
 int zm_debug_msg1 (char*,int ) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_le16_to_cpu (int ) ;
 int zmw_leave_critical_section (int *) ;

void zfStaProcessAuth(zdev_t* dev, zbuf_t* buf, u16_t* src, u16_t apId)
{
    struct zsWlanAuthFrameHeader* pAuthFrame;
    u8_t pBuf[sizeof(struct zsWlanAuthFrameHeader)];
    u32_t p1, p2;

    zmw_get_wlan_dev(dev);
    zmw_declare_for_critical_section();

    if ( !zfStaIsConnecting(dev) )
    {
        return;
    }

    pAuthFrame = (struct zsWlanAuthFrameHeader*) pBuf;
    zfCopyFromRxBuffer(dev, buf, pBuf, 0, sizeof(struct zsWlanAuthFrameHeader));

    if ( wd->sta.connectState == ZM_STA_CONN_STATE_AUTH_OPEN )
    {
        if ( (zmw_le16_to_cpu(pAuthFrame->seq) == 2)&&
             (zmw_le16_to_cpu(pAuthFrame->algo) == 0)&&
             (zmw_le16_to_cpu(pAuthFrame->status) == 0) )
        {

            zmw_enter_critical_section(dev);
            wd->sta.connectTimer = wd->tick;
            zm_debug_msg0("ZM_STA_CONN_STATE_AUTH_COMPLETED");
            wd->sta.connectState = ZM_STA_CONN_STATE_AUTH_COMPLETED;
            zmw_leave_critical_section(dev);



            zfCoreSetFrequencyEx(dev, wd->frequency, wd->BandWidth40,
                    wd->ExtOffset, zfAuthFreqCompleteCb);


            if ( wd->sta.connectByReasso )
            {
                zfSendMmFrame(dev, ZM_WLAN_FRAME_TYPE_REASOCREQ,
                              wd->sta.bssid, 0, 0, 0);
            }
            else
            {
                zfSendMmFrame(dev, ZM_WLAN_FRAME_TYPE_ASOCREQ,
                              wd->sta.bssid, 0, 0, 0);
            }


        }
        else
        {
            zm_debug_msg1("authentication failed, status = ",
                          pAuthFrame->status);

            if (wd->sta.authMode == ZM_AUTH_MODE_AUTO)
            {
                wd->sta.bIsSharedKey = 1;
                zfStaStartConnect(dev, wd->sta.bIsSharedKey);
            }
            else
            {
                zm_debug_msg0("ZM_STA_STATE_DISCONNECT");
                zfStaConnectFail(dev, ZM_STATUS_MEDIA_DISCONNECT_AUTH_FAILED, wd->sta.bssid, 3);
            }
        }
    }
    else if ( wd->sta.connectState == ZM_STA_CONN_STATE_AUTH_SHARE_1 )
    {
        if ( (zmw_le16_to_cpu(pAuthFrame->algo) == 1) &&
             (zmw_le16_to_cpu(pAuthFrame->seq) == 2) &&
             (zmw_le16_to_cpu(pAuthFrame->status) == 0))

        {
            zfMemoryCopy(wd->sta.challengeText, pAuthFrame->challengeText,
                         pAuthFrame->challengeText[1]+2);


            p1 = 0x30001;
            p2 = 0;
            zfSendMmFrame(dev, ZM_WLAN_FRAME_TYPE_AUTH,
                          wd->sta.bssid, p1, p2, 0);

            zmw_enter_critical_section(dev);
            wd->sta.connectTimer = wd->tick;

            zm_debug_msg0("ZM_STA_SUB_STATE_AUTH_SHARE_2");
            wd->sta.connectState = ZM_STA_CONN_STATE_AUTH_SHARE_2;
            zmw_leave_critical_section(dev);
        }
        else
        {
            zm_debug_msg1("authentication failed, status = ",
                          pAuthFrame->status);

            zm_debug_msg0("ZM_STA_STATE_DISCONNECT");
            zfStaConnectFail(dev, ZM_STATUS_MEDIA_DISCONNECT_AUTH_FAILED, wd->sta.bssid, 3);
        }
    }
    else if ( wd->sta.connectState == ZM_STA_CONN_STATE_AUTH_SHARE_2 )
    {
        if ( (zmw_le16_to_cpu(pAuthFrame->algo) == 1)&&
             (zmw_le16_to_cpu(pAuthFrame->seq) == 4)&&
             (zmw_le16_to_cpu(pAuthFrame->status) == 0) )
        {


            zfCoreSetFrequencyEx(dev, wd->frequency, wd->BandWidth40,
                    wd->ExtOffset, ((void*)0));


            zfSendMmFrame(dev, ZM_WLAN_FRAME_TYPE_ASOCREQ,
                          wd->sta.bssid, 0, 0, 0);

            zmw_enter_critical_section(dev);
            wd->sta.connectTimer = wd->tick;

            zm_debug_msg0("ZM_STA_SUB_STATE_ASSOCIATE");
            wd->sta.connectState = ZM_STA_CONN_STATE_ASSOCIATE;
            zmw_leave_critical_section(dev);
        }
        else
        {
            zm_debug_msg1("authentication failed, status = ",
                          pAuthFrame->status);

            zm_debug_msg0("ZM_STA_STATE_DISCONNECT");
            zfStaConnectFail(dev, ZM_STATUS_MEDIA_DISCONNECT_AUTH_FAILED, wd->sta.bssid, 3);
        }
    }
    else
    {
        zm_debug_msg0("unknown case");
    }
}

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
typedef  int /*<<< orphan*/  zbuf_t ;
typedef  int /*<<< orphan*/  u8_t ;
typedef  int u32_t ;
typedef  int /*<<< orphan*/  u16_t ;
struct zsWlanAuthFrameHeader {int /*<<< orphan*/  status; int /*<<< orphan*/  seq; int /*<<< orphan*/  algo; scalar_t__* challengeText; } ;
struct TYPE_3__ {scalar_t__ connectState; scalar_t__ authMode; int bIsSharedKey; int /*<<< orphan*/  bssid; int /*<<< orphan*/  connectTimer; int /*<<< orphan*/  challengeText; scalar_t__ connectByReasso; } ;
struct TYPE_4__ {TYPE_1__ sta; int /*<<< orphan*/  tick; int /*<<< orphan*/  ExtOffset; int /*<<< orphan*/  BandWidth40; int /*<<< orphan*/  frequency; } ;

/* Variables and functions */
 scalar_t__ ZM_AUTH_MODE_AUTO ; 
 int /*<<< orphan*/  ZM_STATUS_MEDIA_DISCONNECT_AUTH_FAILED ; 
 scalar_t__ ZM_STA_CONN_STATE_ASSOCIATE ; 
 scalar_t__ ZM_STA_CONN_STATE_AUTH_COMPLETED ; 
 scalar_t__ ZM_STA_CONN_STATE_AUTH_OPEN ; 
 scalar_t__ ZM_STA_CONN_STATE_AUTH_SHARE_1 ; 
 scalar_t__ ZM_STA_CONN_STATE_AUTH_SHARE_2 ; 
 int /*<<< orphan*/  ZM_WLAN_FRAME_TYPE_ASOCREQ ; 
 int /*<<< orphan*/  ZM_WLAN_FRAME_TYPE_AUTH ; 
 int /*<<< orphan*/  ZM_WLAN_FRAME_TYPE_REASOCREQ ; 
 TYPE_2__* wd ; 
 int /*<<< orphan*/ * zfAuthFreqCompleteCb ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

void FUNC14(zdev_t* dev, zbuf_t* buf, u16_t* src, u16_t apId)
{
    struct zsWlanAuthFrameHeader* pAuthFrame;
    u8_t  pBuf[sizeof(struct zsWlanAuthFrameHeader)];
    u32_t p1, p2;

    FUNC11(dev);
    FUNC9();

    if ( !FUNC5(dev) )
    {
        return;
    }

    pAuthFrame = (struct zsWlanAuthFrameHeader*) pBuf;
    FUNC0(dev, buf, pBuf, 0, sizeof(struct zsWlanAuthFrameHeader));

    if ( wd->sta.connectState == ZM_STA_CONN_STATE_AUTH_OPEN )
    {
        if ( (FUNC12(pAuthFrame->seq) == 2)&&
             (FUNC12(pAuthFrame->algo) == 0)&&
             (FUNC12(pAuthFrame->status) == 0) )
        {

            FUNC10(dev);
            wd->sta.connectTimer = wd->tick;
            FUNC7("ZM_STA_CONN_STATE_AUTH_COMPLETED");
            wd->sta.connectState = ZM_STA_CONN_STATE_AUTH_COMPLETED;
            FUNC13(dev);

            //Set channel according to AP's configuration
            //Move to here because of Cisco 11n AP feature
            FUNC1(dev, wd->frequency, wd->BandWidth40,
                    wd->ExtOffset, zfAuthFreqCompleteCb);

            /* send association frame */
            if ( wd->sta.connectByReasso )
            {
                FUNC3(dev, ZM_WLAN_FRAME_TYPE_REASOCREQ,
                              wd->sta.bssid, 0, 0, 0);
            }
            else
            {
                FUNC3(dev, ZM_WLAN_FRAME_TYPE_ASOCREQ,
                              wd->sta.bssid, 0, 0, 0);
            }


        }
        else
        {
            FUNC8("authentication failed, status = ",
                          pAuthFrame->status);

            if (wd->sta.authMode == ZM_AUTH_MODE_AUTO)
            {
                wd->sta.bIsSharedKey = 1;
                FUNC6(dev, wd->sta.bIsSharedKey);
            }
            else
            {
                FUNC7("ZM_STA_STATE_DISCONNECT");
                FUNC4(dev, ZM_STATUS_MEDIA_DISCONNECT_AUTH_FAILED, wd->sta.bssid, 3);
            }
        }
    }
    else if ( wd->sta.connectState == ZM_STA_CONN_STATE_AUTH_SHARE_1 )
    {
        if ( (FUNC12(pAuthFrame->algo) == 1) &&
             (FUNC12(pAuthFrame->seq) == 2) &&
             (FUNC12(pAuthFrame->status) == 0))
              //&& (pAuthFrame->challengeText[1] <= 255) )
        {
            FUNC2(wd->sta.challengeText, pAuthFrame->challengeText,
                         pAuthFrame->challengeText[1]+2);

            /* send the 3rd authentication frame */
            p1 = 0x30001;
            p2 = 0;
            FUNC3(dev, ZM_WLAN_FRAME_TYPE_AUTH,
                          wd->sta.bssid, p1, p2, 0);

            FUNC10(dev);
            wd->sta.connectTimer = wd->tick;

            FUNC7("ZM_STA_SUB_STATE_AUTH_SHARE_2");
            wd->sta.connectState = ZM_STA_CONN_STATE_AUTH_SHARE_2;
            FUNC13(dev);
        }
        else
        {
            FUNC8("authentication failed, status = ",
                          pAuthFrame->status);

            FUNC7("ZM_STA_STATE_DISCONNECT");
            FUNC4(dev, ZM_STATUS_MEDIA_DISCONNECT_AUTH_FAILED, wd->sta.bssid, 3);
        }
    }
    else if ( wd->sta.connectState == ZM_STA_CONN_STATE_AUTH_SHARE_2 )
    {
        if ( (FUNC12(pAuthFrame->algo) == 1)&&
             (FUNC12(pAuthFrame->seq) == 4)&&
             (FUNC12(pAuthFrame->status) == 0) )
        {
            //Set channel according to AP's configuration
            //Move to here because of Cisco 11n AP feature
            FUNC1(dev, wd->frequency, wd->BandWidth40,
                    wd->ExtOffset, NULL);

            /* send association frame */
            FUNC3(dev, ZM_WLAN_FRAME_TYPE_ASOCREQ,
                          wd->sta.bssid, 0, 0, 0);

            FUNC10(dev);
            wd->sta.connectTimer = wd->tick;

            FUNC7("ZM_STA_SUB_STATE_ASSOCIATE");
            wd->sta.connectState = ZM_STA_CONN_STATE_ASSOCIATE;
            FUNC13(dev);
        }
        else
        {
            FUNC8("authentication failed, status = ",
                          pAuthFrame->status);

            FUNC7("ZM_STA_STATE_DISCONNECT");
            FUNC4(dev, ZM_STATUS_MEDIA_DISCONNECT_AUTH_FAILED, wd->sta.bssid, 3);
        }
    }
    else
    {
        FUNC7("unknown case");
    }
}